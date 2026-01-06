.class public abstract Lcom/android/internal/telephony/ConnectionBase;
.super Ljava/lang/Object;
.source "ConnectionBase.java"


# static fields
.field public static final blacklist AUDIO_QUALITY_HIGH_DEFINITION_PLUS:I = 0x3


# instance fields
.field blacklist mCmcExtras:Landroid/os/Bundle;

.field private blacklist mInternalAttribute:I

.field private final blacklist mInternalAttributeLock:Ljava/lang/Object;

.field protected blacklist mIsCmcPullable:Z

.field private blacklist mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSipError:I


# direct methods
.method protected constructor blacklist <init>(I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttributeLock:Ljava/lang/Object;

    .line 26
    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mSipError:I

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mParticipants:Ljava/util/List;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mIsCmcPullable:Z

    .line 33
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist confirmSdCallPullRequest()V
    .locals 1

    .line 150
    const-string p0, "ConnectionBase"

    const-string v0, "confirmSdCallPullRequest() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getCmcExtras()Landroid/os/Bundle;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected blacklist getCmcPullable()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/internal/telephony/ConnectionBase;->mIsCmcPullable:Z

    return p0
.end method

.method protected blacklist getInternalAttribute()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    return p0
.end method

.method public blacklist getIsUseAssistedDialing()Z
    .locals 1

    const/16 v0, 0x80

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ConnectionBase;->hasInternalAttribute(I)Z

    move-result p0

    return p0
.end method

.method blacklist getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mParticipants:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/ConnectionBase;->mParticipants:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getSipErrorCode()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/internal/telephony/ConnectionBase;->mSipError:I

    return p0
.end method

.method public blacklist hasInternalAttribute(I)Z
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist isMidCallSupport()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist removeInternalAttribute(I)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttributeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    not-int p1, p1

    and-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist requireConfirmationBeforeSdCallPull(Z)V
    .locals 0

    .line 145
    const-string p0, "ConnectionBase"

    const-string p1, "requireConfirmationBeforeSdCallPull() should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 100
    const-string p0, "ConnectionBase"

    const-string p1, "sendConnectionEvent should be called in ImsPhoneConnectionn"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setCmcExtras(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setCmcExtras(Landroid/os/Bundle;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;)V"
        }
    .end annotation

    .line 130
    const-string p0, "ConnectionBase"

    const-string p1, "setCmcExtras() should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setCmcPullable(Z)V
    .locals 0

    .line 140
    const-string p0, "ConnectionBase"

    const-string p1, "setCmcPullable() should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setInternalAttribute(I)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttributeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist setParticipants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mParticipants:Ljava/util/List;

    return-void
.end method

.method public blacklist setSipErrorCode(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mSipError:I

    return-void
.end method

.method public blacklist updateInternalAttribute(IZ)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttributeLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 66
    :try_start_0
    iget p2, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 68
    :cond_0
    iget p2, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mInternalAttribute:I

    .line 70
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
