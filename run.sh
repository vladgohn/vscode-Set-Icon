#!/bin/bash
<<<<<<< HEAD

# Даем права на выполнение скрипта change_vscode_icon.sh
chmod +x change_vscode_icon.sh

# Запускаем скрипт change_vscode_icon.sh
./change_vscode_icon.sh
=======
echo "Создание и запуск скрипта..."
echo '#!/bin/bash' > run_temp.sh
echo 'chmod +x change_vscode_icon.sh' >> run_temp.sh
echo './change_vscode_icon.sh' >> run_temp.sh
chmod +x run_temp.sh
sudo ./run_temp.sh
rm run_temp.sh
echo "Скрипт завершен!"
>>>>>>> eacd71d (update2)
