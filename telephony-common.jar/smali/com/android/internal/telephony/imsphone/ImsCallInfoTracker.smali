.class public Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;
.super Ljava/lang/Object;
.source "ImsCallInfoTracker.java"


# instance fields
.field private final blacklist mImsCallInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNextIndex:I

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$D_tz1UDB94fY5UBCEc9noYsbYaU(Lcom/android/internal/telephony/imsphone/ImsCallInfo;)Z
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->shouldIgnoreUpdate()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$fFT5zBfQPuNbKphi8iL96QIObg4(Lcom/android/internal/telephony/imsphone/ImsCallInfo;)V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->reset()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gVyCebTc4PMgfSV0PAFDbq6kY90(Lcom/android/internal/telephony/imsphone/ImsCallInfo;)V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->onDisconnect()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mNextIndex:I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist clearAllCallInfo()V
    .locals 2

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 173
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mNextIndex:I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsCallInfoTracker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist dump()V
    .locals 2

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->sort(Ljava/util/List;)V

    .line 211
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsCallInfos="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsCallInfoTracker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifyImsCallStatus()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 183
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->sort(Ljava/util/List;)V

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/Phone;->updateImsCallStatus(Ljava/util/List;Landroid/os/Message;)V

    return-void
.end method

.method public static blacklist sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
            ">;)V"
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public blacklist addImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 5

    .line 67
    const-string v0, "ImsCallInfoTracker"

    const-string v1, "addImsCallStatus"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsCallInfo;

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mNextIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mNextIndex:I

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsCallInfo;

    .line 76
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->init(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 79
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->shouldIgnoreUpdate()Z

    move-result p1

    if-nez p1, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->notifyImsCallStatus()V

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->dump()V

    .line 86
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist clearAllOrphanedConnections()V
    .locals 2

    .line 147
    const-string v0, "ImsCallInfoTracker"

    const-string v1, "clearAllOrphanedConnections"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 151
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->notifyImsCallStatus()V

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->clearAllCallInfo()V

    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->dump()V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 217
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 218
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->sort(Ljava/util/List;)V

    .line 220
    const-string p0, "ImsCallInfoTracker:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mImsCallInfo="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist notifySrvccCompleted()V
    .locals 2

    .line 159
    const-string v0, "ImsCallInfoTracker"

    const-string v1, "notifySrvccCompleted"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->clearAllCallInfo()V

    .line 162
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->notifyImsCallStatus()V

    .line 164
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->dump()V

    return-void
.end method

.method public blacklist updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;ZZ)V

    return-void
.end method

.method public blacklist updateImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;ZZ)V
    .locals 4

    .line 108
    const-string v0, "ImsCallInfoTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsCallStatus holdReceived="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", resumeReceived="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsCallInfo;

    if-nez v1, :cond_0

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->notifyImsCallStatus()V

    .line 124
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p2

    .line 126
    const-string p3, "ImsCallInfoTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImsCallStatus state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object p3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq p2, p3, :cond_2

    sget-object p3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, p3, :cond_4

    .line 131
    :cond_2
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mImsCallInfo:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->reset()V

    .line 133
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getIndex()I

    move-result p1

    iget p2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mNextIndex:I

    add-int/lit8 p3, p2, -0x1

    if-ge p1, p3, :cond_3

    .line 134
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mQueue:Ljava/util/List;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->sort(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 137
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->mNextIndex:I

    .line 141
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->dump()V

    .line 142
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
