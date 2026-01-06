.class public Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;
.super Ljava/lang/Object;
.source "DisplayPowerReaderForFactoryBinary.java"


# static fields
.field private static BIGDATA_EFS_PATH:Ljava/lang/String; = null

.field private static BUCK_ALL_PATH:Ljava/lang/String; = null

.field private static final DELAY_FOR_SENSING:I = 0x1f4

.field private static final DELAY_FOR_STABILITY:I = 0x7d0

.field private static final FACTORY_15MODE_START_ACTION:Ljava/lang/String; = "com.samsung.intent.action.DISPLAY_PMIC_SENSING_START"

.field private static final FACTORY_15MODE_STOP_ACTION:Ljava/lang/String; = "com.samsung.intent.action.DISPLAY_PMIC_SENSING_STOP"

.field private static MODULE_NUM_MAX:I = 0x0

.field private static final SENSING_COUNT:I = 0x3

.field private static SYSFS_DIRECTORY_PATH:Ljava/lang/String;

.field private static SYSFS_EFFECTIVE_VALUE_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mChannelPower:[I

.field mContext:Landroid/content/Context;

.field mCount:I

.field private mDisplayPmicSensingStartRunnable:Ljava/lang/Runnable;

.field private mDisplayPmicSensingStopRunnable:Ljava/lang/Runnable;

.field private mDisplayPower:[I

.field private mEachChannelPowerList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEfsDisplayPowerFile:Ljava/io/File;

.field mHandler:Landroid/os/Handler;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mSkipPowerSensing:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayPmicSensingStartRunnable(Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPmicSensingStartRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayPmicSensingStopRunnable(Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPmicSensingStopRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetBUCK_ALL_PATH()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->BUCK_ALL_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-class v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "adc_val_all"

    sput-object v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->BUCK_ALL_PATH:Ljava/lang/String;

    .line 27
    const-string v0, "/sys/class/adc_meter1/s2dos05_adc/"

    sput-object v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->SYSFS_DIRECTORY_PATH:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->SYSFS_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "adc_validity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->SYSFS_EFFECTIVE_VALUE_PATH:Ljava/lang/String;

    .line 33
    const/16 v0, 0x8

    sput v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->MODULE_NUM_MAX:I

    .line 53
    const-string v0, "/efs/FactoryApp/display_pmic_power"

    sput-object v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->BIGDATA_EFS_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mHandler:Landroid/os/Handler;

    .line 31
    sget v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->MODULE_NUM_MAX:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mChannelPower:[I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mSkipPowerSensing:Z

    .line 51
    iput v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mCount:I

    .line 139
    new-instance v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$1;-><init>(Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    new-instance v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$2;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$2;-><init>(Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPmicSensingStartRunnable:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$3;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$3;-><init>(Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPmicSensingStopRunnable:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->SYSFS_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adc_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->SYSFS_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->BUCK_ALL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->BUCK_ALL_PATH:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->BIGDATA_EFS_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mEfsDisplayPowerFile:Ljava/io/File;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPower:[I

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mEachChannelPowerList:Ljava/util/HashMap;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 69
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.intent.action.DISPLAY_PMIC_SENSING_START"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v0, "com.samsung.intent.action.DISPLAY_PMIC_SENSING_STOP"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 72
    return-void

    .line 61
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public static changePermissons(Ljava/io/File;I)I
    .locals 2
    .param p0, "path"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method


# virtual methods
.method calculateDisplayPower()V
    .locals 11

    .line 76
    :try_start_0
    const-string v0, "SSRM_FILE_READ"

    sget-object v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->BUCK_ALL_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfsMultipleLines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "tempPower":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 79
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 80
    aget-object v3, v0, v2

    const-string v4, ":|uW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "power":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 82
    aget-object v5, v3, v4

    const-string v6, "CH"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, v3, v4

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    iget-object v5, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mChannelPower:[I

    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    aput v6, v5, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 81
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    .end local v3    # "power":[Ljava/lang/String;
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "tempPower":[Ljava/lang/String;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 92
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v0, "channels":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    sget v2, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->MODULE_NUM_MAX:I

    const-string v3, "\""

    if-ge v1, v2, :cond_3

    .line 94
    iget-object v2, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPower:[I

    iget v4, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mCount:I

    aget v5, v2, v4

    iget-object v6, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mChannelPower:[I

    aget v6, v6, v1

    add-int/2addr v5, v6

    aput v5, v2, v4

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",\"CH"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mChannelPower:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 98
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mEachChannelPowerList:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPower:[I

    iget v5, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mCount:I

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display Power ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPower:[I

    iget v6, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mCount:I

    aget v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mCount:I

    .line 102
    iget v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mCount:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_7

    .line 103
    iget-object v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mEfsDisplayPowerFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    iget-object v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mEfsDisplayPowerFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_4

    .line 105
    sget-object v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->TAG:Ljava/lang/String;

    const-string v6, "Delete display power file is failed"

    invoke-static {v1, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mEfsDisplayPowerFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_5

    .line 110
    sget-object v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->TAG:Ljava/lang/String;

    const-string v6, "Create display power file is failed"

    invoke-static {v1, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 114
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mEfsDisplayPowerFile:Ljava/io/File;

    const/16 v6, 0x1a4

    invoke-static {v1, v6}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->changePermissons(Ljava/io/File;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 117
    goto :goto_4

    .line 115
    :catch_1
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_5

    .line 118
    :catch_2
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5
    iget-object v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPower:[I

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 123
    sget-object v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->TAG:Ljava/lang/String;

    sget-object v6, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->SYSFS_EFFECTIVE_VALUE_PATH:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "validity":Ljava/lang/String;
    const-string v6, "\",\"Valid\":\""

    const-string v7, "\"Power\":\""

    if-eqz v1, :cond_6

    .line 125
    sget-object v8, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->TAG:Ljava/lang/String;

    sget-object v9, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->BIGDATA_EFS_PATH:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPower:[I

    aget v10, v10, v2

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mEachChannelPowerList:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPower:[I

    aget v2, v10, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v8, v9, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 129
    :cond_6
    sget-object v8, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->TAG:Ljava/lang/String;

    sget-object v9, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->BIGDATA_EFS_PATH:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPower:[I

    aget v10, v10, v2

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mEachChannelPowerList:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPower:[I

    aget v2, v10, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v8, v9, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_6
    iget-object v2, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.DISPLAY_PMIC_SENSING_STOP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 134
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mDisplayPower:[I

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mEachChannelPowerList:Ljava/util/HashMap;

    .line 137
    .end local v1    # "validity":Ljava/lang/String;
    :cond_7
    return-void
.end method
