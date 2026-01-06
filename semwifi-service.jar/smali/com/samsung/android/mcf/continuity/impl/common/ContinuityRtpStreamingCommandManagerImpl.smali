.class public final Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;


# direct methods
.method public static synthetic $r8$lambda$BlK1ZuS6Ln2yptnqH093QzYChqw(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->unregisterCommandListener()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final sendCommand(Ljava/lang/String;[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getBtMac(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p2, "unknown deviceId : "

    .line 14
    .line 15
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureDeviceId(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "ContinuityRtpStreamingCommandManagerImpl"

    .line 30
    .line 31
    const-string p2, "sendCommand"

    .line 32
    .line 33
    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;->sendCommand(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
