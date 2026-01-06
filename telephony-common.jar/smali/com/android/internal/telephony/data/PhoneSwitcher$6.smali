.class Lcom/android/internal/telephony/data/PhoneSwitcher$6;
.super Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 746
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$6;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onRequireCancelAnyPendingAutoSwitchValidation()V
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$6;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mcancelPendingAutoDataSwitchValidation(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    return-void
.end method

.method public blacklist onRequireImmediatelySwitchToPhone(II)V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$6;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v1

    :goto_0
    iput v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    .line 763
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$6;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 764
    invoke-static {p2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluationReasonToString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 763
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mevaluateIfImmediateDataSwitchIsNeeded(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist onRequireValidation(IZ)V
    .locals 2

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$6;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    iget-object v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v0

    .line 752
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$6;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/4 p1, 0x4

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, p1, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mvalidate(Lcom/android/internal/telephony/data/PhoneSwitcher;IZILcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    return-void
.end method
