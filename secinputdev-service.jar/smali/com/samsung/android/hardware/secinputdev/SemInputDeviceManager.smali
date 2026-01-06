.class public Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;
.super Ljava/lang/Object;
.source "SemInputDeviceManager.java"


# static fields
.field public static final DEVID_DEFAULT_TSP:I = 0x1

.field public static final DEVID_EXTRA_TSP:I = 0x2

.field public static final DEVID_KEY:I = 0x15

.field public static final DEVID_KEYBOARD:I = 0x1f

.field public static final DEVID_SPEN:I = 0xb

.field public static final DEVID_TAAS:I = 0x29

.field public static final DEVID_TSP_MAX:I = 0x3

.field public static final FORCE_OFF:I = 0x15

.field public static final FORCE_ON:I = 0x16

.field public static final KEY_APPSELECT:I = 0x244

.field public static final KEY_BACK:I = 0x9e

.field public static final KEY_EMERGENCY:I = 0x2a0

.field public static final KEY_HOME:I = 0xac

.field public static final KEY_HOT:I = 0xfc

.field public static final KEY_MICMUTE:I = 0xf8

.field public static final KEY_POWER:I = 0x74

.field public static final KEY_RECENT:I = 0xfe

.field public static final KEY_VOLUMEDOWN:I = 0x72

.field public static final KEY_VOLUMEUP:I = 0x73

.field public static final MODE_DISABLE:I = 0x0

.field public static final MODE_ENABLE:I = 0x1

.field public static final MOTION_CONTROL_AIVF_THRESHOLD_TO_HIGH:I = 0x2

.field public static final MOTION_CONTROL_AIVF_THRESHOLD_TO_LOW:I = 0x0

.field public static final MOTION_CONTROL_AIVF_THRESHOLD_TO_MID:I = 0x1

.field public static final MOTION_CONTROL_TYPE_AIVF_EVENT:Ljava/lang/String; = "AIVF_EVENT"

.field public static final MOTION_CONTROL_TYPE_AIVF_SENSITIVITY:Ljava/lang/String; = "AIVF_SENSITIVITY"

.field public static final MOTION_CONTROL_TYPE_AIVF_THRESHOLD:Ljava/lang/String; = "AIVF_THRESHOLD"

.field public static final MOTION_CONTROL_TYPE_AIVF_VOLUME:Ljava/lang/String; = "AIVF_VOLUME"

.field public static final MOTION_CONTROL_TYPE_ALL:Ljava/lang/String; = "ALL"

.field public static final MOTION_ENABLE_TYPE_AIVF:Ljava/lang/String; = "AIVF"

.field public static final MOTION_ENABLE_TYPE_AWD:Ljava/lang/String; = "AWD"

.field public static final MOTION_ENABLE_TYPE_PALM:Ljava/lang/String; = "PALM"

.field public static final MOTION_ENABLE_TYPE_PALM_SWIPE:Ljava/lang/String; = "PALM_SWIPE"

.field public static final MOTION_ENABLE_TYPE_POCKET_DETECT:Ljava/lang/String; = "POCKET_DETECT"

.field public static final MOTION_ERROR_TYPE_NOT_LOADED_SERVICE:I = -0x2

.field public static final MOTION_ERROR_TYPE_NOT_SUPPORT_HARDWARE:I = -0x1

.field public static final MOTION_ERROR_TYPE_NOT_SUPPORT_MOTION:I = -0x3

.field public static final MOTION_ERROR_TYPE_NULL_STRING:I = -0x4

.field public static final MOTION_TYPE_AIVF:I = 0x5

.field public static final MOTION_TYPE_AWD:I = 0x6

.field public static final MOTION_TYPE_CALLBACK:I = 0x8

.field public static final MOTION_TYPE_EAR_DETECTION:I = 0x3

.field public static final MOTION_TYPE_GRIP_FILTER:I = 0x4

.field public static final MOTION_TYPE_NONE:I = 0x0

.field public static final MOTION_TYPE_PALM_MUTE:I = 0x1

.field public static final MOTION_TYPE_PALM_SWIPE:I = 0x2

.field public static final MOTION_TYPE_POCKET_DETECT:I = 0x9

.field public static final MOTION_TYPE_STREAM:I = 0x7

.field public static final RESULT_NG:I = -0x1

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_STR_NA:Ljava/lang/String; = "NA"

.field public static final RESULT_STR_NG:Ljava/lang/String; = "NG"

.field public static final SUPPORT_AOT:I = 0x1

.field public static final SUPPORT_INPUT_MONITOR:I = 0x10000

.field public static final SUPPORT_MISCALIBRATION:I = 0x200

.field public static final SUPPORT_MULTICALIBRATION:I = 0x400

.field public static final SUPPORT_OPENSHORT:I = 0x100

.field public static final SUPPORT_PRESSURE:I = 0x2

.field public static final SUPPORT_PROX_LP_SCAN_ENABLED:I = 0x40

.field public static final SUPPORT_RAWDATA_MOTION_AIVF:I = 0x200000

.field public static final SUPPORT_RAWDATA_MOTION_AWD:I = 0x800000

.field public static final SUPPORT_RAWDATA_MOTION_PALM:I = 0x100000

.field public static final SUPPORT_RAWDATA_MOTION_PALM_SWIPE:I = 0x400000

.field public static final SUPPORT_RAWDATA_MOTION_POCKET_DETECT:I = 0x80000

.field public static final SUPPORT_RAWDATA_TRANSFER:I = 0x40000

.field public static final SUPPORT_RR120:I = 0x4

.field public static final SUPPORT_SYSINPUT_ENABLED:I = 0x20

.field public static final SUPPORT_VRR:I = 0x8

.field public static final SUPPORT_WIRELESS_TX:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SemInputDeviceManager"

.field public static gloveMode:I


# instance fields
.field private service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->gloveMode:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-string v0, "SemInputDeviceManager"

    if-nez p1, :cond_0

    .line 117
    const-string v1, "ISemInputDeviceManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 120
    :cond_0
    const-string v1, "SemInputDeviceManager ++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    .line 122
    return-void
.end method

.method private activate(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;Z)I
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "mode"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    .param p3, "state"    # Z

    .line 148
    const/4 v0, -0x1

    .line 150
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 151
    const-string v1, "activate: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v0

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->activate(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;Z)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 161
    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private getProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 218
    const-string v0, "NG"

    .line 220
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 221
    const-string v1, "getProperty: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-object v0

    .line 225
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 231
    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "getProperty: Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private runCommand(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 259
    const-string v0, "NG"

    .line 261
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 262
    const-string v1, "runCommand: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-object v0

    .line 266
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runCommand: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->runCommand(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 272
    goto :goto_0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I
    .locals 1
    .param p1, "command"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;
    .param p2, "mode"    # Ljava/lang/String;

    .line 190
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "command"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;
    .param p3, "mode"    # Ljava/lang/String;

    .line 169
    const/4 v0, -0x1

    .line 171
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 172
    const-string v1, "setProperty: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v0

    .line 176
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProperty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setCommand(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 182
    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "setProperty: Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .param p3, "mode"    # Ljava/lang/String;

    .line 197
    const/4 v0, -0x1

    .line 199
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 200
    const-string v1, "setProperty: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v0

    .line 204
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProperty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "setProperty: Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method


# virtual methods
.method public enableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;ZLjava/lang/String;)I
    .locals 1
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .param p2, "enable"    # Z
    .param p3, "client"    # Ljava/lang/String;

    .line 815
    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->enableMotion(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableMotion(Ljava/lang/String;ZLjava/lang/String;)I
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "client"    # Ljava/lang/String;

    .line 795
    const/4 v0, -0x1

    .line 797
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 798
    const-string v1, "enableMotion: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return v0

    .line 803
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->enableMotion(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 806
    goto :goto_0

    .line 804
    :catch_0
    move-exception v1

    .line 805
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getAodActiveArea(I)Ljava/lang/String;
    .locals 2
    .param p1, "devid"    # I

    .line 584
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->AOD_ACTIVE_AREA:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandList(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 239
    const-string v0, "NG"

    .line 241
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 242
    const-string v1, "getCommandList: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-object v0

    .line 247
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getCommandList(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 250
    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getDeviceEnabled(I)I
    .locals 4
    .param p1, "devid"    # I

    .line 647
    const/4 v0, -0x1

    .line 649
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 650
    const-string v1, "getDeviceEnabled: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return v0

    .line 655
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getDeviceEnabled(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 658
    goto :goto_0

    .line 656
    :catch_0
    move-exception v1

    .line 657
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getFodInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "devid"    # I

    .line 570
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FOD_INFO:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFodPosition(I)Ljava/lang/String;
    .locals 2
    .param p1, "devid"    # I

    .line 577
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FOD_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPressStateAll()Ljava/lang/String;
    .locals 4

    .line 295
    const-string v0, ""

    .line 297
    .local v0, "keystate":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 298
    const-string v1, "getKeyPressStateAll: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-object v0

    .line 303
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getKeyPressStateAll()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 306
    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getMotionControl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;

    .line 869
    const/4 v0, -0x1

    .line 871
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 872
    const-string v1, "getMotionControl: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return v0

    .line 877
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getMotionControl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 880
    goto :goto_0

    .line 878
    :catch_0
    move-exception v1

    .line 879
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 882
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getScrubPosition(I)Ljava/lang/String;
    .locals 2
    .param p1, "devid"    # I

    .line 533
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->SCRUB_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpenPosition()Ljava/lang/String;
    .locals 2

    .line 605
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportDevice(I)I
    .locals 4
    .param p1, "devid"    # I

    .line 128
    const/4 v0, -0x1

    .line 130
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 131
    const-string v1, "getSupportDevice: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v0

    .line 136
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getSupportDevice(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getTspSupportFeature(I)I
    .locals 4
    .param p1, "devid"    # I

    .line 513
    const/4 v0, 0x0

    .line 515
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 516
    const-string v1, "getTspSupportFeature: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v0

    .line 521
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getTspSupportFeature(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 524
    goto :goto_0

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isEnableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;)I
    .locals 1
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .param p2, "client"    # Ljava/lang/String;

    .line 862
    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;

    .line 842
    const/4 v0, -0x1

    .line 844
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 845
    const-string v1, "isEnableMotion: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return v0

    .line 850
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 853
    goto :goto_0

    .line 851
    :catch_0
    move-exception v1

    .line 852
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isKeyPressedByKeycode(I)Z
    .locals 4
    .param p1, "keycode"    # I

    .line 315
    const/4 v0, 0x0

    .line 317
    .local v0, "keystate":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 318
    const-string v1, "isKeyPressedByKeycode: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return v0

    .line 323
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->isKeyPressedByKeycode(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 326
    goto :goto_0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isSupportMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;)Z
    .locals 1
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 788
    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->isSupportMotion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportMotion(Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .line 768
    const/4 v0, 0x0

    .line 770
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 771
    const-string v1, "isSupportMotion: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return v0

    .line 776
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->isSupportMotion(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 779
    goto :goto_0

    .line 777
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public registerListener(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "client"    # Ljava/lang/String;

    .line 667
    const/4 v0, 0x0

    .line 669
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 670
    const-string v1, "registerListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return v0

    .line 675
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 678
    goto :goto_0

    .line 676
    :catch_0
    move-exception v1

    .line 677
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "client"    # Ljava/lang/String;

    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 711
    const-string v1, "registerListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return v0

    .line 716
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 719
    goto :goto_0

    .line 717
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public runEmergency(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "devid"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 281
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->runCommand(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runEmergencyCurrentTsp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 288
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->runCommand(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRawdataTsp(I[I)I
    .locals 4
    .param p1, "devid"    # I
    .param p2, "data"    # [I

    .line 748
    const/4 v0, -0x1

    .line 750
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 751
    const-string v1, "sendRawdataTsp: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return v0

    .line 756
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->sendRawdataTsp(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;[I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 759
    goto :goto_0

    .line 757
    :catch_0
    move-exception v1

    .line 758
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setAlwaysLowPowerMode(II)I
    .locals 4
    .param p1, "devid"    # I
    .param p2, "enable"    # I

    .line 506
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->ALWAYS_LOW_POWER_MODE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAodEnable(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 407
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->AOD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAodNotiRect(IIII)I
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 400
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->AOD_NOTI_RECT:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAodRect(IIII)I
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 393
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->AOD_RECT:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAotEnable(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 414
    const/4 v0, -0x1

    .line 415
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 416
    const-string v1, "setAotEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return v0

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAotEnable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setAotEnable(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setBrushEnable(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 386
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->BRUSH:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setCoverMode(ZI)V
    .locals 5
    .param p1, "switchState"    # Z
    .param p2, "coverType"    # I

    .line 557
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 558
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->DEFAULT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->gloveMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    .line 559
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->EXTRA_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->gloveMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    .line 560
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    .line 564
    :goto_0
    return-void
.end method

.method public setFodEnable(IIII)I
    .locals 3
    .param p1, "mode"    # I
    .param p2, "pressFast"    # I
    .param p3, "strictMode"    # I
    .param p4, "control"    # I

    .line 432
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 433
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->FOD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 435
    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->FOD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFodIconVisible(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 442
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->FOD_ICON_VISIBLE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFodLpMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 457
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->FOD_LP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFodRect(IIII)I
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "mode":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->FOD_RECT:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setGripData(Ljava/lang/String;)I
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .line 342
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->GRIP_DATA:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setLowSensitivityMode(II)I
    .locals 3
    .param p1, "mode"    # I
    .param p2, "level"    # I

    .line 499
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->LOW_SENSITIVITY:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setLowSensitivityModeEnable(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 492
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->LOW_SENSITIVITY:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setMotionControl(Ljava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "control"    # I
    .param p3, "client"    # Ljava/lang/String;

    .line 822
    const/4 v0, -0x1

    .line 824
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 825
    const-string v1, "setMotionControl: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return v0

    .line 830
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setMotionControl(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 833
    goto :goto_0

    .line 831
    :catch_0
    move-exception v1

    .line 832
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setNoteMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 358
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->NOTE_APP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setPocketModeEnable(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 485
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->POCKET_MODE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setProxPowerOff(II)I
    .locals 4
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 540
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->PROX_OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSingletapEnable(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 464
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SINGLETAP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSipMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 349
    if-nez p1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    .line 350
    .local v0, "control":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ALL"

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setMotionControl(Ljava/lang/String;ILjava/lang/String;)I

    .line 351
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SIP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSpayEnable(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 372
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPAY:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenBleChargeMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 619
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_BLE_CHARGING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenCoverType(I)I
    .locals 4
    .param p1, "type"    # I

    .line 598
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_COVER_TYPE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenEnabled(IIZ)I
    .locals 2
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z

    .line 591
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->activate(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;Z)I

    move-result v0

    return v0
.end method

.method public setSpenLowCurrentMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 633
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_LOWCURRENT:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenPdctLowSensitivityEnable(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 626
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_PDCT_LOWSENSITIVITY:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenPower(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 612
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_POWER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenPowerSavingMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 640
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SPEN_SAVING_MODE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setStylusEnable(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 379
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->STYLUS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSyncChanged(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 478
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SYNC_CHANGED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTemperature(I)I
    .locals 3
    .param p1, "value"    # I

    .line 365
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->TEMPERATURE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTouchableArea(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 471
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->TOUCHABLE_AREA:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTspEnabled(IIZ)I
    .locals 2
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z

    .line 335
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->activate(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;Z)I

    move-result v0

    return v0
.end method

.method public setWirelessChargingMode(II)I
    .locals 4
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 547
    const/4 v0, 0x1

    const-string v1, ""

    if-ne p1, v0, :cond_0

    .line 548
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->WIRELESS_CHARGER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 550
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->WIRELESS_CHARGER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unregisterListener(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "client"    # Ljava/lang/String;

    .line 687
    const/4 v0, 0x0

    .line 689
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 690
    const-string v1, "unregisterListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return v0

    .line 695
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 698
    goto :goto_0

    .line 696
    :catch_0
    move-exception v1

    .line 697
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "client"    # Ljava/lang/String;

    .line 728
    const/4 v0, 0x0

    .line 730
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 731
    const-string v1, "unregisterListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return v0

    .line 736
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 739
    goto :goto_0

    .line 737
    :catch_0
    move-exception v1

    .line 738
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
