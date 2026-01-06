.class Lcom/android/internal/telephony/uicc/UiccProfile$4;
.super Landroid/content/BroadcastReceiver;
.source "UiccProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 369
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 372
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.START_ICC_NETWORK_DEPERSO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 373
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$misSupportSsu(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 374
    const-string p1, "ssu.status"

    const-string p2, ""

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 375
    const-string p2, "perm_unlock"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "temp_unlock"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 376
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmSalesCode(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VZW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmSalesCode(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VPP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 377
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mmakeVzwSsuNetworkLockDialog(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    return-void

    .line 381
    :cond_1
    sget-object p1, Lcom/android/internal/telephony/uicc/UiccProfile$7;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto/16 :goto_0

    .line 391
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string p2, "Receive START_ICC_NETWORK_DEPERSO, lockType : SP"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 392
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmServicePoviderLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    .line 387
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string p2, "Receive START_ICC_NETWORK_DEPERSO, lockType : SUBSET"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 388
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmNetworkSubsetLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    .line 383
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string p2, "Receive START_ICC_NETWORK_DEPERSO, lockType : NETWORK"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 384
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmNetworkLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    .line 397
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 398
    const-string p1, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 399
    const-string v0, "com.samsung.carrier.extra.CARRIER_STATE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result v1

    if-ne p1, v1, :cond_7

    const-string p1, "ABSENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 403
    :cond_6
    const-string p1, "com.samsung.carrier.extra.CARRIER_CANONICAL_ID"

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 404
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive CARRIER_CHANGED : carrierId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", carrierState="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 405
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mhandleCarrierNameOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    :cond_7
    :goto_0
    return-void
.end method
