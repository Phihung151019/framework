.class public Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;
.super Ljava/lang/Object;
.source "CarrierServiceStateTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmergencyNetworkNotification"
.end annotation


# instance fields
.field private blacklist mDelay:I

.field private final blacklist mTypeId:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 629
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 627
    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    .line 630
    iput p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mTypeId:I

    return-void
.end method

.method private blacklist createDoNotShowAgainAction(Landroid/content/Context;)Landroid/app/Notification$Action;
    .locals 3

    .line 724
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.action.SILENCE_WIFI_CALLING_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 730
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    const p0, 0x10404fc

    .line 731
    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 733
    :cond_0
    const-string p0, "Do Not Ask Again"

    :goto_0
    new-instance p1, Landroid/app/Notification$Action$Builder;

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getDelay()I
    .locals 0

    .line 647
    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    return p0
.end method

.method public blacklist getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 4

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 696
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040061

    .line 697
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x1040060

    .line 699
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 701
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 702
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 703
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 704
    invoke-virtual {v3, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 705
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 706
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    new-array v2, v2, [Landroid/app/Notification$Action;

    const/4 v3, 0x0

    .line 707
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->createDoNotShowAgainAction(Landroid/content/Context;)Landroid/app/Notification$Action;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string v0, "wfc"

    .line 708
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNotificationId()I
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    return p0
.end method

.method public blacklist getNotificationTag()Ljava/lang/String;
    .locals 0

    .line 675
    const-string p0, "EmergencyNetworkNotification"

    return-object p0
.end method

.method public blacklist getTypeId()I
    .locals 0

    .line 667
    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mTypeId:I

    return p0
.end method

.method public blacklist isEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist sendMessage()Z
    .locals 3

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmergencyNetworkNotification: sendMessage() w/values: ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 683
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$misPhoneRegisteredForWifiCalling(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmSST(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 684
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    const-string v1, "CSST"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$misPhoneRegisteredForWifiCalling(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setDelay(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 637
    const-string v0, "CSST"

    if-nez p1, :cond_0

    .line 638
    const-string p0, "bundle is null"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 641
    :cond_0
    const-string v1, "emergency_notification_delay_int"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    .line 643
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reading time to delay notification emergency: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setEnabled(Landroid/os/PersistableBundle;)V
    .locals 0

    .line 0
    return-void
.end method
