for name in `ls | awk -F. '{print $1}'`; do echo $name; sed -i "s/<name>.*<\/name>/<name>${name}<\/name>/g" ${name}.xml; done
for i in `sudo virsh list --all | grep instance | awk '{print $2}'`; do sudo virsh undefine $i; done
