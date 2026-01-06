.class public Lcom/android/internal/telephony/euicc/EuiccSession;
.super Ljava/lang/Object;
.source "EuiccSession.java"


# static fields
.field public static final blacklist DOWNLOAD:Ljava/lang/String; = "DOWNLOAD"

.field private static blacklist sInstance:Lcom/android/internal/telephony/euicc/EuiccSession;


# instance fields
.field private final blacklist mApduSenders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccSession;->mSessions:Ljava/util/Set;

    .line 55
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccSession;->mApduSenders:Ljava/util/Set;

    .line 196
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccSession;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist endSessionInternal(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 160
    new-array v1, v0, [Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccSession;->mSessions:Ljava/util/Set;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/euicc/EuiccSession;->removeOrClear(Ljava/util/Set;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccSession;->hasSessionInternal()Z

    move-result p1

    if-nez p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccSession;->mApduSenders:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    .line 171
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccSession;->mApduSenders:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 173
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    array-length p0, v1

    :goto_1
    if-ge v0, p0, :cond_1

    aget-object p1, v1, v0

    .line 175
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->closeAnyOpenChannel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 173
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static declared-synchronized blacklist get(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccSession;
    .locals 2

    const-class v0, Lcom/android/internal/telephony/euicc/EuiccSession;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccSession;->sInstance:Lcom/android/internal/telephony/euicc/EuiccSession;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccSession;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/EuiccSession;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/euicc/EuiccSession;->sInstance:Lcom/android/internal/telephony/euicc/EuiccSession;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/euicc/EuiccSession;->sInstance:Lcom/android/internal/telephony/euicc/EuiccSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist hasSessionInternal()Z
    .locals 1

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccSession;->mSessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist optimizeApduSender()Z
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccSession;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11102ce

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist removeOrClear(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 186
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 187
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return p1

    .line 190
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist endAllSessions()V
    .locals 2

    .line 153
    const-string v0, "EuiccSession"

    const-string v1, "endAllSessions"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccSession;->endSessionInternal(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist endSession(Ljava/lang/String;)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EuiccSession"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccSession;->endSessionInternal(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist hasSession()Z
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccSession;->hasSessionInternal()Z

    move-result p0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EuiccSession"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public blacklist noteChannelOpen(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)V
    .locals 3

    .line 123
    const-string v0, "EuiccSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteChannelOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccSession;->hasSessionInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccSession;->mApduSenders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 128
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist startSession(Ljava/lang/String;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccSession;->optimizeApduSender()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    const-string v0, "EuiccSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccSession;->mSessions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
