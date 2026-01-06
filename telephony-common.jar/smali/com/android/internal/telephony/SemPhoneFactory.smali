.class public Lcom/android/internal/telephony/SemPhoneFactory;
.super Ljava/lang/Object;
.source "SemPhoneFactory.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemPhoneFactory"

.field private static volatile blacklist mContext:Landroid/content/Context; = null

.field private static volatile blacklist mInstance:Lcom/android/internal/telephony/SemPhoneFactory; = null

.field private static final blacklist mLockProxyPhones:Ljava/lang/Object;

.field private static blacklist mMadeDefaults:Z = false

.field private static volatile blacklist mSatelliteCommandsInterface:Lcom/android/internal/telephony/SatelliteCommandsInterface;

.field private static volatile blacklist mSemCommandsInterfaces:[Lcom/android/internal/telephony/SemCommandsInterface;

.field private static blacklist mSemPhone:Lcom/android/internal/telephony/SemPhone;

.field private static blacklist mSemPhones:[Lcom/android/internal/telephony/SemPhone;

.field private static blacklist sSemPhoneNotifier:Lcom/android/internal/telephony/SemPhoneNotifier;


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mSemPhoneSubInfoController:Lcom/android/internal/telephony/SemPhoneSubInfoController;

.field private blacklist mSemTelephonyController:Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monMultiSimConfigChanged(Lcom/android/internal/telephony/SemPhoneFactory;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneFactory;->onMultiSimConfigChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mLockProxyPhones:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/internal/telephony/SemPhoneFactory$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemPhoneFactory$1;-><init>(Lcom/android/internal/telephony/SemPhoneFactory;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemPhoneFactory;->mHandler:Landroid/os/Handler;

    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneFactory;->makeSemPhone()V

    .line 97
    new-instance v1, Lcom/android/internal/telephony/SemPhoneSubInfoController;

    sget-object v2, Lcom/android/internal/telephony/SemPhoneFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemPhoneSubInfoController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhoneSubInfoController:Lcom/android/internal/telephony/SemPhoneSubInfoController;

    .line 98
    new-instance v1, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;

    sget-object v2, Lcom/android/internal/telephony/SemPhoneFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemTelephonyController:Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;

    .line 99
    new-instance v1, Lcom/android/internal/telephony/SemPhoneNotifier;

    sget-object v2, Lcom/android/internal/telephony/SemPhoneFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemPhoneNotifier;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->sSemPhoneNotifier:Lcom/android/internal/telephony/SemPhoneNotifier;

    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneFactory;->makeSemTelephonyDatabaseHelper()V

    const/4 p0, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-static {v0, p0, v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SemPhoneFactory init done"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/SemPhoneFactory;
    .locals 2

    .line 89
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mInstance:Lcom/android/internal/telephony/SemPhoneFactory;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mInstance:Lcom/android/internal/telephony/SemPhoneFactory;

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SemPhoneFactory.getInstance can\'t be called before make"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getSatelliteCommandsInterface(Landroid/content/Context;)Lcom/android/internal/telephony/SatelliteCommandsInterface;
    .locals 2

    .line 133
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSatelliteCommandsInterface:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    if-nez v1, :cond_0

    .line 135
    invoke-static {p0}, Lcom/android/internal/telephony/SemPhoneFactory;->makeSatelliteRIL(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 137
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->mSatelliteCommandsInterface:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    monitor-exit v0

    return-object p0

    .line 138
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static blacklist getSemCommandsInterfaces(Landroid/content/Context;)[Lcom/android/internal/telephony/SemCommandsInterface;
    .locals 2

    .line 113
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemCommandsInterfaces:[Lcom/android/internal/telephony/SemCommandsInterface;

    if-nez v1, :cond_0

    .line 115
    invoke-static {p0}, Lcom/android/internal/telephony/SemPhoneFactory;->makeSemRIL(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 117
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemCommandsInterfaces:[Lcom/android/internal/telephony/SemCommandsInterface;

    monitor-exit v0

    return-object p0

    .line 118
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static blacklist getSemPhone(I)Lcom/android/internal/telephony/SemPhone;
    .locals 5

    .line 62
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/SemPhoneFactory;->mMadeDefaults:Z

    if-eqz v1, :cond_3

    const v1, 0x7fffffff

    if-eq p0, v1, :cond_2

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p0, :cond_1

    .line 69
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    array-length v2, v1

    if-ge p0, v2, :cond_1

    .line 70
    aget-object v1, v1, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhone:Lcom/android/internal/telephony/SemPhone;

    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhone:Lcom/android/internal/telephony/SemPhone;

    .line 72
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/SemPhoneFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " phone="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    monitor-exit v0

    return-object v1

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Default SemPhones haven\'t been made yet!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static blacklist getSemPhoneNotifier()Lcom/android/internal/telephony/SemPhoneNotifier;
    .locals 1

    .line 195
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->sSemPhoneNotifier:Lcom/android/internal/telephony/SemPhoneNotifier;

    return-object v0
.end method

.method private static blacklist makeSatelliteRIL(Landroid/content/Context;)V
    .locals 1

    .line 142
    new-instance v0, Lcom/android/internal/telephony/SatelliteRIL;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SatelliteRIL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mSatelliteCommandsInterface:Lcom/android/internal/telephony/SatelliteCommandsInterface;

    return-void
.end method

.method private blacklist makeSemPhone()V
    .locals 5

    .line 146
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->mLockProxyPhones:Ljava/lang/Object;

    monitor-enter p0

    .line 147
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/SemPhoneFactory;->mMadeDefaults:Z

    if-nez v0, :cond_2

    .line 148
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 149
    new-array v1, v0, [Lcom/android/internal/telephony/SemPhone;

    sput-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 152
    sget-object v3, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    new-instance v4, Lcom/android/internal/telephony/SemPhone;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/SemPhone;-><init>(I)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    .line 155
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhone:Lcom/android/internal/telephony/SemPhone;

    :cond_1
    const/4 v0, 0x1

    .line 156
    sput-boolean v0, Lcom/android/internal/telephony/SemPhoneFactory;->mMadeDefaults:Z

    .line 158
    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist makeSemPhoneFactory()Lcom/android/internal/telephony/SemPhoneFactory;
    .locals 2

    .line 78
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mInstance:Lcom/android/internal/telephony/SemPhoneFactory;

    if-nez v0, :cond_1

    .line 79
    const-class v0, Lcom/android/internal/telephony/SemPhoneFactory;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mInstance:Lcom/android/internal/telephony/SemPhoneFactory;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/android/internal/telephony/SemPhoneFactory;

    invoke-direct {v1}, Lcom/android/internal/telephony/SemPhoneFactory;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mInstance:Lcom/android/internal/telephony/SemPhoneFactory;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 85
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mInstance:Lcom/android/internal/telephony/SemPhoneFactory;

    return-object v0
.end method

.method private static blacklist makeSemRIL(Landroid/content/Context;)V
    .locals 5

    .line 122
    sput-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->mContext:Landroid/content/Context;

    .line 124
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    .line 125
    new-array v0, p0, [Lcom/android/internal/telephony/SemRIL;

    sput-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemCommandsInterfaces:[Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 128
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemCommandsInterfaces:[Lcom/android/internal/telephony/SemCommandsInterface;

    new-instance v2, Lcom/android/internal/telephony/SemRIL;

    sget-object v3, Lcom/android/internal/telephony/SemPhoneFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/SemRIL;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist makeSemTelephonyDatabaseHelper()V
    .locals 2

    .line 182
    sget-boolean p0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-eqz p0, :cond_0

    .line 183
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Do not create SemTelephonyDatabaseHelper in WATCH"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 187
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Creating SemTelephonyDatabaseHelper"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "SemTelephonyDatabaseHelper"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p0, v0}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 190
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 191
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->make(Landroid/content/Context;ILandroid/os/Looper;)Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    return-void
.end method

.method private blacklist onMultiSimConfigChanged(I)V
    .locals 5

    .line 162
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->mLockProxyPhones:Ljava/lang/Object;

    monitor-enter p0

    .line 163
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    array-length v0, v0

    if-ne v0, p1, :cond_0

    .line 164
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-le v0, p1, :cond_1

    .line 169
    monitor-exit p0

    return-void

    .line 171
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemCommandsInterfaces:[Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/SemCommandsInterface;

    sput-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemCommandsInterfaces:[Lcom/android/internal/telephony/SemCommandsInterface;

    .line 172
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/SemPhone;

    sput-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    :goto_0
    if-ge v0, p1, :cond_2

    .line 175
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemCommandsInterfaces:[Lcom/android/internal/telephony/SemCommandsInterface;

    new-instance v2, Lcom/android/internal/telephony/SemRIL;

    sget-object v3, Lcom/android/internal/telephony/SemPhoneFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/SemRIL;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    aput-object v2, v1, v0

    .line 176
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    new-instance v2, Lcom/android/internal/telephony/SemPhone;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/SemPhone;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
