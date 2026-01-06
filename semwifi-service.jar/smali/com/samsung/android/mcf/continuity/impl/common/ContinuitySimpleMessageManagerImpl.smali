.class public final Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;


# instance fields
.field private final mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

.field private final mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;


# direct methods
.method public static synthetic $r8$lambda$1UgDEVMAPesOyiujmri4434JutM(Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->setSimpleMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->sendUnregisterSimpleMessageListenerCommand()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic $r8$lambda$UQH4t6oInN1TZxx4sWSdaSF66vQ(Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl$1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl$1;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->setSimpleMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->sendRegisterSimpleMessageListenerCommand()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const-string p0, "ContinuitySimpleMessageManagerImpl"

    .line 20
    .line 21
    const-string v0, "registerMessageListener"

    .line 22
    .line 23
    const-string v1, "fail sendRegisterMessageListenerCommand"

    .line 24
    .line 25
    invoke-static {p0, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-virtual {p1, p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->setSimpleMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->setSimpleMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final sendMessage(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureDeviceId(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ContinuitySimpleMessageManagerImpl"

    .line 6
    .line 7
    const-string v2, "sendMessage"

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getBtMac(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p2, "unknown deviceId : "

    .line 25
    .line 26
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureDeviceId(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 46
    .line 47
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->sendSimpleMessageCommand(Ljava/lang/String;[B)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method
