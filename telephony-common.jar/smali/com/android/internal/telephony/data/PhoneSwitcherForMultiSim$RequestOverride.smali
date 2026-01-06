.class Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;
.super Ljava/lang/Object;
.source "PhoneSwitcherForMultiSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestOverride"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;,
        Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;
    }
.end annotation


# instance fields
.field blacklist mDelayReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

.field blacklist mPhoneId:I

.field blacklist mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

.field blacklist mStateInitialized:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->clear()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V
    .locals 0

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 652
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    .line 653
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    const/4 v0, -0x1

    .line 654
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    const/4 v0, 0x0

    .line 655
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mStateInitialized:Z

    return-void
.end method

.method public blacklist getStateInitialized()Z
    .locals 0

    .line 678
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mStateInitialized:Z

    return p0
.end method

.method public blacklist isNone()Z
    .locals 1

    .line 679
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isOverride()Z
    .locals 1

    .line 680
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->OVERRIDE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isRestore()Z
    .locals 1

    .line 681
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->RESTORE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isWaiting()Z
    .locals 1

    .line 682
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    return-void
.end method

.method public blacklist set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;)V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 672
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mStateInitialized:Z

    .line 674
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    return-void
.end method

.method public blacklist set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;I)V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    if-eq v0, p2, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 665
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mStateInitialized:Z

    .line 667
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    .line 668
    iput p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    return-void
.end method

.method public blacklist set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V
    .locals 1

    .line 658
    iget-object v0, p1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    .line 659
    iget-object v0, p1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    .line 660
    iget v0, p1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    .line 661
    iget-boolean p1, p1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mStateInitialized:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mStateInitialized:Z

    return-void
.end method

.method public blacklist setStateInitialized(Z)V
    .locals 0

    .line 677
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mStateInitialized:Z

    return-void
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 684
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestOverride(mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
