.class public Lcom/android/internal/telephony/uicc/UiccSlot;
.super Landroid/os/Handler;
.source "UiccSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_ICC_CARD_ADDED:Ljava/lang/String; = "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

.field public static final blacklist INVALID_PHONE_ID:I = -0x1

.field public static final blacklist VOLTAGE_CLASS_A:I = 0x1

.field public static final blacklist VOLTAGE_CLASS_B:I = 0x2

.field public static final blacklist VOLTAGE_CLASS_C:I = 0x3

.field public static final blacklist VOLTAGE_CLASS_UNKNOWN:I

.field private static blacklist sPhoneIdToPhysicalSlotIdx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blacklist LOG_TAG_ID:Ljava/lang/String;

.field private blacklist NoSimNotyFlag:Z

.field private blacklist dialog:Landroid/app/AlertDialog;

.field private blacklist mActive:Z

.field private blacklist mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

.field private blacklist mCardState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEid:Ljava/lang/String;

.field private blacklist mIccIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsEuicc:Z

.field private blacklist mIsRemovable:Z

.field private blacklist mLastRadioState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMinimumVoltageClass:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPortIdxToPhoneId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mSkipCardSwapDialog:Z

.field private blacklist mSlotId:I

.field private blacklist mStateIsUnknown:Z

.field private blacklist mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

.field private blacklist mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private blacklist updateFlagInserted:Z

.field private blacklist updateFlagRemoved:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$EoANDaoGoiZ579qj7mJdCx_KJGU(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    .line 1064
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdialog(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputdialog(Lcom/android/internal/telephony/uicc/UiccSlot;Landroid/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccSlot;->sPhoneIdToPhysicalSlotIdx:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 156
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    const/4 v1, -0x1

    .line 121
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->NoSimNotyFlag:Z

    .line 129
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagRemoved:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagInserted:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    .line 153
    const-string v0, "UiccSlot"

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->LOG_TAG_ID:Ljava/lang/String;

    .line 157
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    .line 159
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 160
    sget-object p1, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    .line 163
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.intent.action.SIM_REMOVED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    const/4 p2, 0x2

    invoke-virtual {p0, v2, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private blacklist absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;I)Z
    .locals 1

    .line 481
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    .line 482
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist checkIsEuiccSupported()V
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 583
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    return-void

    .line 586
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isEuiccSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsEuiccSupported : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-eqz v0, :cond_1

    .line 590
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    .line 591
    const-string v0, "if mEid is empty, set mIsEuicc to false"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private blacklist checkMinimumVoltageClass()V
    .locals 5

    const/4 v0, 0x0

    .line 597
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    .line 598
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-nez v1, :cond_0

    goto :goto_1

    .line 603
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->getInterfaceBytes()Ljava/util/List;

    move-result-object v1

    .line 604
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_5

    .line 605
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 606
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/16 v4, 0xf

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 608
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTA()Ljava/lang/Byte;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 609
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTA()Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 611
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 614
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 617
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    :cond_3
    :goto_1
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    :cond_5
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    return-void
.end method

.method private blacklist disposeUiccCardIfNeeded(ZI)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->disposePort(I)V

    .line 526
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPortList()[Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 528
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    :cond_0
    return-void

    .line 531
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    return-void
.end method

.method private blacklist getAnyValidPhoneId()I
    .locals 2

    .line 417
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 418
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getPrintableIccIds()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1061
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccSlot$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UiccSlot$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccSlot$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/UiccSlot$$ExternalSyntheticLambda1;-><init>()V

    .line 1063
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :catchall_0
    move-exception p0

    .line 1061
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist handleCardAdded()V
    .locals 1

    .line 938
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isLowLayerUimStatusNotPowerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 939
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    :cond_0
    return-void
.end method

.method private blacklist handleCardRemoved()V
    .locals 1

    .line 932
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isLowLayerUimStatusNotPowerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 933
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    :cond_0
    return-void
.end method

.method private blacklist handleCardSwapped(Landroid/os/Message;)V
    .locals 3

    .line 944
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 945
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    if-ne v0, v1, :cond_3

    .line 946
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 947
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne p1, v2, :cond_1

    .line 949
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    goto :goto_0

    .line 951
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    if-ne p1, v2, :cond_5

    move v0, v2

    .line 956
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    return-void
.end method

.method private blacklist hasActivePort([Lcom/android/internal/telephony/uicc/IccSimPortInfo;)Z
    .locals 3

    .line 407
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 408
    iget-boolean v2, v2, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private blacklist isLowLayerUimStatusNotPowerDown(I)Z
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 962
    const-string v1, "ril.llus1"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-ne p1, p0, :cond_2

    const-string p1, "ril.llus2"

    .line 963
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return p0

    :cond_2
    return v0
.end method

.method private blacklist isNightMode(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    .line 902
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "display_night_theme"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 906
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 904
    :goto_1
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_2
    return p0
.end method

.method private blacklist isSlotRemovable(I)Z
    .locals 5

    .line 567
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10701fd

    .line 568
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 572
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, p0, v3

    if-ne v4, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 1049
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->LOG_TAG_ID:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 1053
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->LOG_TAG_ID:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist nullifyUiccCard(Z)V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 518
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    const/4 p1, 0x0

    .line 519
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    return-void
.end method

.method private blacklist onIccSwap(Z)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 676
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 678
    iget-boolean v5, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagInserted:Z

    if-eqz v5, :cond_0

    .line 679
    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagInserted:Z

    .line 680
    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagRemoved:Z

    .line 681
    const-string v5, "onIccSwap: ICC_CARD_STATE_CHANGED INSERTED"

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_c

    .line 682
    iget-boolean v5, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagRemoved:Z

    if-eqz v5, :cond_c

    .line 683
    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagRemoved:Z

    .line 684
    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagInserted:Z

    .line 685
    const-string v5, "onIccSwap: ICC_CARD_STATE_CHANGED REMOVED"

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 690
    :goto_0
    iget v5, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    const-string v6, "persist.sys.softsim.status"

    const-string v7, "default"

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 691
    const-string v6, "activating"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "activated"

    if-nez v7, :cond_1

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 693
    :cond_1
    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    .line 696
    :cond_2
    const-string v7, "onIccSwap: isHotSwapSupported is false, prompt for rebooting"

    const/high16 v9, 0x1000000

    const/high16 v10, 0x10000000

    if-eqz v2, :cond_7

    .line 697
    const-string v2, "onIccSwap: isHotSwapSupported is true, don\'t prompt for rebooting"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 698
    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    const-string v11, "REASON"

    invoke-virtual {v2, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 700
    const-string v11, "SIMSLOT"

    iget v12, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 701
    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 702
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 703
    iget-object v9, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    const-string v10, "com.samsung.permission.SIMHOTSWAP"

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    if-ne v1, v4, :cond_5

    .line 706
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 707
    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    .line 708
    iput-object v1, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    .line 710
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_3

    .line 714
    :cond_4
    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    return-void

    .line 718
    :cond_5
    iget v2, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 720
    iget v2, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    if-ne v2, v4, :cond_6

    .line 721
    const-string v2, "IS_CTC2"

    goto :goto_1

    .line 720
    :cond_6
    const-string v2, "IS_CTC"

    .line 723
    :goto_1
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 727
    :cond_7
    invoke-direct {v0, v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    if-nez v1, :cond_8

    .line 729
    const-string v17, "RKT"

    const-string v18, "SJP"

    const-string v11, "SKC"

    const-string v12, "KTC"

    const-string v13, "LUC"

    const-string v14, "KDI"

    const-string v15, "KDR"

    const-string v16, "DCM"

    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isSalesCodeSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 730
    iget-boolean v1, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->NoSimNotyFlag:Z

    if-nez v1, :cond_c

    .line 731
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.NO_SIM_NOTY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 733
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 734
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 735
    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->NoSimNotyFlag:Z

    return-void

    .line 742
    :cond_8
    :goto_2
    iget-boolean v2, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    if-eqz v2, :cond_9

    .line 743
    const-string v1, "do not display icc swap dialog here for tray pop up"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 744
    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    return-void

    .line 748
    :cond_9
    const-string v2, "ro.factory.factory_binary"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "factory"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 750
    const-string v1, "do not display icc swap dialog here for factory"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void

    .line 755
    :cond_a
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getAnyValidPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 756
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 757
    const-string v1, "onIccSwap: already doing shutdown, no need to prompt"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void

    .line 761
    :cond_b
    invoke-direct {v0, v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 763
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->promptForRestart(Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method private blacklist parseAtr(Ljava/lang/String;)V
    .locals 0

    .line 627
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseAtr(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/AnswerToReset;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    .line 628
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->checkIsEuiccSupported()V

    .line 629
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->checkMinimumVoltageClass()V

    return-void
.end method

.method private blacklist promptForRestart(Z)V
    .locals 8

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccSlot$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccSlot$1;-><init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V

    .line 831
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 833
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 834
    const-string v3, "promptForRestart: dialog is already displayed"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 835
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 836
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    .line 843
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 846
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v5, "android.hardware.telephony.euicc"

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    const v5, 0x1040f0d

    .line 847
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 848
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isOneTray()Z

    move-result v6

    if-nez v6, :cond_3

    if-nez p1, :cond_3

    .line 849
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    if-nez p1, :cond_2

    const p1, 0x1040f09

    .line 850
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    if-ne p1, v7, :cond_5

    const p1, 0x1040f0a

    .line 852
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 855
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x11102af

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x1040f08

    .line 856
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    const p1, 0x1040f0e

    .line 858
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const p1, 0x1040f0b

    .line 862
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_1
    const p1, 0x104000a

    .line 866
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_6
    if-eqz p1, :cond_7

    const v4, 0x1040ef4

    .line 868
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v5, v4

    goto :goto_3

    :cond_7
    const v4, 0x1040f0c

    .line 869
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :goto_3
    if-eqz p1, :cond_8

    const p1, 0x1040ef3

    .line 870
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    move-object v4, p1

    goto :goto_5

    :cond_8
    const p1, 0x1040f07

    .line 871
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :goto_5
    const p1, 0x1040f0f

    .line 872
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 875
    :goto_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    .line 876
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->isNightMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x4

    goto :goto_7

    :cond_9
    const/4 v7, 0x5

    :goto_7
    invoke-direct {v2, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 877
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 878
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 879
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p1, :cond_a

    .line 882
    invoke-virtual {v2, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 885
    :cond_a
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    .line 888
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d9

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 890
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v1, 0x10

    .line 891
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 892
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 893
    const-string p1, "promptForRestart: dialog.show()"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 895
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 896
    monitor-exit v0

    return-void

    :goto_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist updateCardStateAbsent(III)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eq p1, v1, :cond_0

    .line 487
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    .line 489
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 488
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 491
    const-string p1, "update: notify card removed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    const/16 p1, 0xd

    .line 492
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/telephony/uicc/UiccController;->updateSimState(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 497
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/uicc/UiccSlot;->disposeUiccCardIfNeeded(ZI)V

    .line 503
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result p0

    if-nez p0, :cond_1

    .line 506
    const-string p0, "ril.hasSimAbsent"

    const-string p1, "1"

    invoke-static {p2, p0, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->setUiccProperty(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private blacklist updateSupportedMepMode(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V
    .locals 1

    .line 390
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    .line 393
    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    if-ne p1, v0, :cond_0

    .line 397
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isMultipleEnabledProfilesSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 400
    const-string p1, "UiccSlot"

    const-string v0, "Modem does not send proper supported MEP mode or older HAL version"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    sget-object p1, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_B:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 3

    .line 541
    const-string v0, "Disposing Slot"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 543
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    .line 544
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 545
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    if-eqz v1, :cond_0

    .line 546
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unregisterForSimSwaped(Landroid/os/Handler;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 548
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1071
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1072
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActive="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsEuicc="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEuiccSupportsMultipleEnabledProfiles="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRemovable="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastRadioState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIccIds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPrintableIccIds()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPortIdxToPhoneId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1080
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCardState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSupportedMepMode="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p2, :cond_0

    .line 1083
    const-string p2, "mUiccCard="

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 1086
    :cond_0
    const-string p0, "mUiccCard=null"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 1089
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    .line 670
    const-string v0, "UiccSlot finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 974
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-nez p0, :cond_0

    .line 975
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    .line 976
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getCardStateForPortIndex(I)Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 985
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-nez p0, :cond_0

    .line 986
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    .line 987
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getEid()Ljava/lang/String;
    .locals 0

    .line 661
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIccId(I)Ljava/lang/String;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 657
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getMinimumVoltageClass()I
    .locals 0

    .line 638
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    return p0
.end method

.method public blacklist getPhoneIdFromPortIndex(I)I
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 463
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getPortIndexFromIccId(Ljava/lang/String;)I
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 451
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->compareIgnoreTrailingFs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 456
    monitor-exit v0

    return p0

    .line 457
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getPortIndexFromPhoneId(I)I
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 440
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 441
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 444
    monitor-exit v0

    return p0

    .line 445
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getPortList()[I
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/RadioConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 429
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getSupportedMepMode()Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1005
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 996
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 915
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    return-void

    .line 923
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->handleCardSwapped(Landroid/os/Message;)V

    return-void

    .line 920
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->handleCardAdded()V

    return-void

    .line 917
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->handleCardRemoved()V

    return-void
.end method

.method public blacklist isActive()Z
    .locals 0

    .line 642
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    return p0
.end method

.method public blacklist isEuicc()Z
    .locals 0

    .line 633
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    return p0
.end method

.method public blacklist isExtendedApduSupported()Z
    .locals 0

    .line 665
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isExtendedApduSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMultipleEnabledProfileSupported()Z
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->isMepMode()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 477
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist isPortActive(I)Z
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    .line 469
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 468
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 470
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist isRemovable()Z
    .locals 0

    .line 646
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    return p0
.end method

.method public blacklist isStateUnknown()Z
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eqz v0, :cond_2

    .line 555
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    .line 557
    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    return p0
.end method

.method public blacklist isValidPortIndex(I)Z
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist onRadioStateUnavailable(I)V
    .locals 4

    .line 1011
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1012
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->disposeUiccCardIfNeeded(ZI)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    .line 1015
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/internal/telephony/uicc/UiccController;->updateSimState(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V

    .line 1018
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UiccSlot: mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPrintableIccIds()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsEuicc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MEP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPortIdxToPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    .line 1097
    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mSupportedMepMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;II)V
    .locals 13

    move/from16 v4, p3

    move/from16 v0, p4

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cardStatus update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 174
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 175
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccSlot;->sPhoneIdToPhysicalSlotIdx:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    .line 176
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slotChanged "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 177
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccSlot;->sPhoneIdToPhysicalSlotIdx:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    iget-object v8, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v8, v8, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    iget-object v8, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v8, v8, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 181
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    iget-object v9, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v9, v9, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    .line 185
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    iget-object v9, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v9, v9, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 186
    iget-object v9, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v10, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v9, v10, :cond_1

    iget-object v9, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    if-eqz v9, :cond_1

    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v8, :cond_1

    const-string v9, ""

    .line 187
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_1
    move v8, v2

    .line 191
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    iget-object v11, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v11, v11, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    instance-of v2, v9, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    .line 194
    :goto_2
    iget-object v9, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    .line 196
    iget-object v9, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccSlot;->parseAtr(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isSlotRemovable(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    .line 199
    iget-object v9, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 200
    iget-object v9, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateSupportedMepMode(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    .line 204
    :cond_3
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 205
    iget-object v9, v9, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iput-object v9, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 208
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    if-le v9, v5, :cond_4

    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UiccSlot"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->LOG_TAG_ID:Ljava/lang/String;

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v11, 0x64

    invoke-interface {v0, p0, v11, v9}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 216
    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v9

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update: radioState="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mLastRadioState="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 221
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    iget-object v11, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v11, v11, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    .line 222
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_5

    if-eqz v1, :cond_5

    goto/16 :goto_4

    :cond_5
    if-eqz v6, :cond_6

    if-eq v6, v10, :cond_6

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v0, :cond_d

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v1, v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v10, :cond_d

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq v9, v1, :cond_7

    .line 238
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    iget-object v5, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v5, v5, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 239
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_7

    .line 242
    const-string v1, "update: notify card added"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    const/16 v1, 0xe

    .line 243
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-eqz v2, :cond_8

    .line 248
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPortList()[Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 249
    :cond_8
    const-string v1, "update: mUiccCard != null when card was present; disposing it now"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 251
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 254
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-nez v0, :cond_a

    .line 256
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto/16 :goto_5

    .line 261
    :cond_a
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update: eid is missing. ics.eid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 263
    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 265
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v0, :cond_c

    .line 266
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getSupportedMepMode()Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto/16 :goto_5

    :cond_c
    move/from16 v4, p3

    .line 271
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, p2, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    goto/16 :goto_5

    .line 275
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_13

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: oldIsEuicc = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsEuicc = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 278
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-ne v2, v0, :cond_f

    if-nez v0, :cond_e

    if-eqz v8, :cond_e

    goto :goto_3

    .line 288
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, p2, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    goto :goto_5

    .line 279
    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 280
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-eqz v0, :cond_10

    .line 281
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getSupportedMepMode()Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_5

    .line 284
    :cond_10
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_5

    .line 223
    :cond_11
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update: oldIsEuicc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsEuicc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    if-ne v2, v5, :cond_12

    .line 224
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-nez v0, :cond_12

    .line 225
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    .line 228
    :cond_12
    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-direct {p0, p1, v4, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateCardStateAbsent(III)V

    .line 293
    :cond_13
    :goto_5
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget p1, p1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    monitor-exit v7

    return-void

    :goto_6
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist update([Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccSlotStatus;I)V
    .locals 8

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "slotStatus update: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 304
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 305
    :try_start_0
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 307
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    .line 308
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->parseAtr(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 311
    :goto_0
    array-length v3, v0

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v0, v2

    iget-boolean v7, v6, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v7, :cond_0

    .line 314
    iget v4, v6, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 313
    :cond_0
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isSlotRemovable(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    .line 318
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move v2, v1

    .line 320
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 321
    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 326
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v0, v2

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-nez v3, :cond_2

    .line 330
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    .line 331
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 330
    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->updateSimStateForInactivePort(ILjava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v3, :cond_2

    .line 336
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->disposePort(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 355
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->hasActivePort([Lcom/android/internal/telephony/uicc/IccSimPortInfo;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 356
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    if-eqz v0, :cond_5

    .line 357
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 358
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    goto :goto_3

    .line 361
    :cond_4
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 373
    :cond_5
    :goto_3
    iget-object p2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateSupportedMepMode(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    .line 375
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_B:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    if-ne p2, v0, :cond_6

    const-string p2, "1"

    const-string v0, "ril.esim.mep_mode"

    const-string v1, ""

    .line 376
    invoke-static {p3, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 377
    const-string p2, "UiccSlot"

    const-string p3, "set mepmode as MEP_A1"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object p2, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_A1:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    .line 383
    :cond_6
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p2, :cond_7

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getSupportedMepMode()Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->updateSupportedMepMode(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    .line 386
    :cond_7
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
