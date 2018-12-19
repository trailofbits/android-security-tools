all:
	@ndk-build -B\
	 NDK_PROJECT_PATH=.\
	 NDK_APPLICATION_MK=./Application.mk\
	 NDK_APP_DST_DIR=./build\
	 NDK_APP_OUT=./build \
	 APP_BUILD_SCRIPT=./Android.mk
clean:
	@rm -rf ./build
install:
	@adb root
	@adb push build/injector /data/local/tmp
	@adb push build/libhook.so /data/local/tmp
	# @adb shell 'su 0 "cp /storage/emulated/0/injector /data/local/"'
	# @adb shell 'su 0 "chmod 777 /data/local/injector"'
