.class public abstract Lcom/android/internal/telephony/SemBaseCommands;
.super Ljava/lang/Object;
.source "SemBaseCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/SemCommandsInterface;


# instance fields
.field public blacklist mAcbInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mCallDetailsChangedRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mCatCallControlResultRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mCatSendSmsResultRegistrant:Lcom/android/internal/telephony/Registrant;

.field public greylist mContext:Landroid/content/Context;

.field public blacklist mCpaiDataGatheringRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mCpaiDevAppMessageRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mCpaiFeatureUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mCpaiModelUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mCsFallbackRegistant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mElevatorModeRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mEpsFallBackResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

.field public blacklist mImsPrefNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mNrIconTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mPbInitCompleteRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mRRCStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mReleaseCompleteMessageRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mSapRegistant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mSimCountMismatchRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mSimOnOffNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mSimSwapRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mSmsDeviceReadyRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mT3346TimerRegistrant:Lcom/android/internal/telephony/Registrant;

.field public blacklist mVendorConfigurationChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mAcbInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mImsPrefNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrIconTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mRRCStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimSwapRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimOnOffNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimCountMismatchRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mVendorConfigurationChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mEpsFallBackResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiModelUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiFeatureUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiDataGatheringRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiDevAppMessageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public blacklist getAtr(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getModemCapability(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist notifyElevatorMode()V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mElevatorModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public blacklist notifySimPbReady()V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_0
    return-void
.end method

.method public blacklist registerElevatorMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 333
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mElevatorModeRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerEpsFallBackResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mEpsFallBackResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForAcbInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mAcbInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCallDetailsChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 312
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCallDetailsChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForCpaiDataGatheringNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiDataGatheringRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCpaiDevAppMessageNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiDevAppMessageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCpaiFeatureUpdateNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiFeatureUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCpaiModelUpdateNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiModelUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCsFallback(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 158
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCsFallbackRegistant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForExtendedRegState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 184
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForImsPrefValue(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mImsPrefNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForNrIconTypeChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrIconTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRRCStateChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mRRCStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSap(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 283
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSapRegistant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForSignalBarInfoChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 170
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForSimCountMismatched(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 244
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimCountMismatchRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForSimOnOffNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 197
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimOnOffNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimSwapRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForVendorConfigurationChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mVendorConfigurationChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerT3346Timer(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 126
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mT3346TimerRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnCatCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 228
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatCallControlResultRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnCatSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 218
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatSendSmsResultRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnPbInitComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 260
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mPbInitCompleteRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 208
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mReleaseCompleteMessageRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnSimPbReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 268
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 269
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist setOnSmsDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 252
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSmsDeviceReadyRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist unSetOnCatCallControlResult(Landroid/os/Handler;)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatCallControlResultRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unSetOnCatSendSmsResult(Landroid/os/Handler;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatSendSmsResultRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unSetOnPbInitComplete(Landroid/os/Handler;)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mPbInitCompleteRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unSetOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;)V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mReleaseCompleteMessageRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unSetOnSimPbReady(Landroid/os/Handler;)V
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unSetOnSmsDeviceReady(Landroid/os/Handler;)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSmsDeviceReadyRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unregisterElevatorMode(Landroid/os/Handler;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mElevatorModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mElevatorModeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mElevatorModeRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_0
    return-void
.end method

.method public blacklist unregisterEpsFallBackResult(Landroid/os/Handler;)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mEpsFallBackResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForAcbInfoChanged(Landroid/os/Handler;)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mAcbInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCallDetailsChanged(Landroid/os/Handler;)V
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCallDetailsChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unregisterForCpaiDataGatheringNotification(Landroid/os/Handler;)V
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiDataGatheringRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCpaiDevAppMessageNotification(Landroid/os/Handler;)V
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiDevAppMessageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCpaiFeatureUpdateNotification(Landroid/os/Handler;)V
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiFeatureUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCpaiModelUpdateNotification(Landroid/os/Handler;)V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiModelUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCsFallback(Landroid/os/Handler;)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCsFallbackRegistant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unregisterForExtendedRegState(Landroid/os/Handler;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

    :cond_0
    return-void
.end method

.method public blacklist unregisterForImsPrefValue(Landroid/os/Handler;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mImsPrefNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNrIconTypeChange(Landroid/os/Handler;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrIconTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRRCStateChange(Landroid/os/Handler;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mRRCStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSap(Landroid/os/Handler;)V
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSapRegistant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist unregisterForSignalBarInfoChange(Landroid/os/Handler;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_0
    return-void
.end method

.method public blacklist unregisterForSimCountMismatched(Landroid/os/Handler;)V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimCountMismatchRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSimOnOffNoti(Landroid/os/Handler;)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimOnOffNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSimSwaped(Landroid/os/Handler;)V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimSwapRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForVendorConfigurationChanged(Landroid/os/Handler;)V
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mVendorConfigurationChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterT3346Timer(Landroid/os/Handler;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mT3346TimerRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist updateStackBinding(IILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method
