#!/sbin/sh

mount -t f2fs /dev/block/by-name/userdata /data

mkdir -p /tmp/append_userdata
unzip /tmp/append_userdata.zip -d /tmp/append_userdata/
cp -rf /tmp/append_userdata/* /data/

chmod -R 777 /data/media
chmod 666 /data/media/fbe_0/sys_screensavers_res.zip
#chcon -R u:object_r:media_rw_data_file:s0 /data/media
#chown -R media_rw:media_rw  /data/media

chown -R system:system /data/app
chmod -R 777 /data/app
chcon -R u:object_r:apk_data_file:s0 /data/app/

touch /data/format_unclear/screensavers/sale_mode.fea
chown -R system:system /data/format_unclear
chcon -R u:object_r:oplus_public_data_file:s0 /data/format_unclear
chmod -R 777 /data/format_unclear/screensavers

chmod -R 777 /data/engineermode/
chown -R system:system /data/engineermode/data_version

sync

