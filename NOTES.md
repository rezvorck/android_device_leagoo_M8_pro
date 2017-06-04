### Заметки

Полностью рабочее дерево для сборки Resurrection Remix N v5.8.3

***********

 * Извлечь файлы из прошивки (M8_pro_update.zip):

cd ~/RR/device/leagoo/M8_pro
. extract-files.sh unzip

***********

  * Сборка KernelAdiutor

git clone git://github.com/Grarak/KernelAdiutor.git
cd ~/KernelAdiutor
./gradlew build

Переименовать и скопировать готовый APK в vendor/leagoo/M8_pro/app

***********

Почти все патчи использованы от исходного дерева https://github.com/DeckerSU/android_device_doogee_x5max_pro

 * Применить патчи:

cd ~/RR/device/leagoo/M8_pro/patches
. apply-patches.sh

 * Отменить применение:

cd ~/RR/device/leagoo/M8_pro/patches
. rm-rf.sh
repo sync --force-sync

***********

Как исправлена запись видео в камере https://github.com/DeckerSU/android_device_smart_surf2_4g/blame/cm13.0-test01/NOTES.md#L449
Что бы не менять файлы вручную, они вынесены в device.

***********

Фикс офф-лайн зарядки (взято от Nexus):
 + service charger /sbin/healthd -c и т.д.
Не гаснет подсветка после отключения изображения(?)

***********

Проблема с рандомными ребутами кроется в некоректной реботе sensorservice

 - E Sensors : new setDelay handle(0),ns(33000000)m, error(0), index(2)
 - E Sensors : handleToDriver handle(0)

Временное решение - используется sensors.mt6737m.so из ALPS 7.0

