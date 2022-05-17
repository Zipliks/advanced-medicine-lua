# advanced-medicine-lua
A Lua attempt of Advanced Medicine mod

Описание методов
## Utils.SetAffliction(character,affliction,strength,limb,add,aggressor)
*"Задаёт или добавляет силу введённого аффликшена"*
- **character** (Barotrauma.Character) - Персонаж, к которому будут применены изменения
- **affliction** (String) - Аффликшен который будет применён
- **strength** (Number) - Сила применяемого аффликшена
- **limb** (Barotrauma.LimbType) - Конечность на которую примененяется аффликшен. По умолчанию на торсо
- **add** (Bool) - если False, аффликшен будет переназначаться. Если True - добавлятся к текущему значению
- **aggressor** (Barotrauma.Character) - Персонаж, который применил этот аффликшен
```lua
-- Добавляет ожоги персонажу под контролем первого клиента
Utils.SetAffliction(Client.Clientlist[1].Character,"burn",10,nil,true,nil)

-- Снимает все ожоги ему-же
Utils.SetAffliction(Client.Clientlist[1].Character,"blunttrauma",0,nil,false,nil)
```

## Utils.GetAffliction(character,affliction)
*"Возвращает значение требуемого аффликшена. Не возвращает nil"*
- **character** (Barotrauma.Character) - Персонаж у которого будет проверятся аффликшен
- **affliction** (String) - Аффликшен который будет проверен
```lua
local strength = Utils.GetAffliction(Client.Clientlist[1].Character,"blunttrauma

if strength == 0 then
  print("Shine!")
end
```

## Utils.GetAfflictionLimb(character,affliction,limb)
*"Возвращает значение требуемого аффликшена на конечности. Не возвращает nil"*
- **character** (Barotrauma.Character) - Персонаж у которого будет проверятся аффликшен
- **affliction** (String) - Аффликшен который будет проверен
- **limb** (Barotrauma.LimbType) - Конечность, которая будет проверятся
```lua
local strength_limb = Utils.GetAfflictionLimb(Client.Clientlist[1].Character,"blunttrauma",LimbType.Head)

if strength_limb <= 10 then
  print("Сотрясения не было")
end
```

## Main.AddHumanUpdater(name,func)
*"Добавляет HumanUpdater с функцией которая будет постоянно исполнятся относительно каждого человека"*
- **name** (String) - Имя апдейтера
- **func** (Function) - Функция для исполнения

### Аргументы func()
- **character** (Barotrauma.Character) - Относительно кого работает апдейтер
```lua
Main.AddHumanUpdater("example",function (character)
  print(character.Name.." is alive")
end)
```

## Main.AddAfflictionHandler(id,name,func)
*"Добавляет AfflictionHandler с функцией которая будет постоянно исполнятся относительно **заданного аффликшена** по всему телу у каждого человека"*
- **id** (String) - Айди аффликшена
- **name** (String) - Имя апдейтера
- **func** (Function) - Функция для исполнения

### Аргументы func()
- **character** (Barotrauma.Character) - Относительно кого работает апдейтер
- **strength** (Number) - Сила аффликшена
```lua
Main.AddAfflictionHandler("blunttrauma","test",function (character,strength)
  print("blunt for "..character.Name.." is "..strength)
  --Utils.SetAffliction(character,"blunttrauma",2*DELTA_TIME,nil,true) -- Умер от синяка
end)
```

## Main.AddAfflictionLimbHandler(id,name,func)
*"Добавляет AfflictionHandler с функцией которая будет постоянно исполнятся относительно аффликшена на **каждой** конечности у **каждого** человека"*
- **id** (String) - Айди аффликшена
- **name** (String) - Имя апдейтера
- **func** (Function) - Функция для исполнения

### Аргументы func()
- **character** (Barotrauma.Character) - Относительно кого работает апдейтер
- **strength** (Number) - Сила аффликшена на конечности
- **limb** (Barotrauma.LimbType) - Конечность
```lua
Main.AddAfflictionLimbHandler("blunttrauma","test",function (character,strength,limb)
  print("blunt for "..character.Name.." on "..tostring(limb).." is "..strength)
end)
```

## Main.AddDamageHandler(id,func)
*"Добавляет DamageHandler с функцией, которая будет исполнятся при получении урона с этим аффликшеном"*
- **id** (String) - Айди аффликшена
- **func** (Function) - Функция для исполнения

### Аргументы func()
- **character** (Barotrauma.Character) - Персонаж который получил урон
- **strength** (Number) - Сила полученного аффликшена
- **limb** (Barotrauma.LimbType) - Конечность, которая пострадала
- **attackResult** (Barotrauma.AttackResult) - Результат атаки, нужен например чтобы получить остальные аффликшены
```lua
Main.AddDamageHandler("stun",function (character,id,strength,limb,attackResult)
    print("Stun: "..strength)

    -- Добавить ещё 2 секунды стана при ударе по голове
    if limb == LimbType.Head then
        Utils.SetAffliction(character,"stun",2,nil,true)
        print("Bonk!")
    end
end)
```

## Main.SetItemFunction(id,func)
*"Добавляет ItemFunction с функцией которая будет исполнятся при использовании айтема в Health Menu (Только в нём)"*
- **id** (String) - Айди предмета. У него должен прописан функционал для менюшки в xml
- **func** (Function) - Функция для исполнения

### Аргументы func()
- **item** (Barotrauma.Item) - Относительно кого работает апдейтер
- **usingCharacter** (Barotrauma.Character) - Персонаж, использующий предмет
- **targetCharacter** (Barotrauma.Character) - Персонаж, на кого использовали предмет
- **limb** (Barotrauma.LimbType) - Конечность, на которую использовали предмет
```lua
Main.SetItemFunction("antibleeding1",function (item, usingCharacter, targetCharacter, limb)
  print("User: "..usingCharacter.Name.." Target: "..targetCharacter.Name)
  if limb == LimbType.Head then
    print("Raiden Cosplay")
  end
end)
```

## Utils.ThrowError(text,level)
*"Выводит ошибки, возникшие в моде"*
- **text** (String) - Айди предмета. У него должен прописан функционал для менюшки в xml
- **level** (Number) - Смещение по месту вывода ошибки. 0 - Там где был использован метод с этой функцией
```lua
function example(id,func)
  if id == nil or func == nil then 
    Utils.ThrowError("Bad argument",1)
  end
end
-- Вывод в консоль будет примерно такой: "AMlua Custom Error: *text*"
```