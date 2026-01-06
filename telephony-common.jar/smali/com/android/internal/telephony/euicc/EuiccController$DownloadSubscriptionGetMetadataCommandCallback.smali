.class Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;
.super Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;
.source "EuiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadSubscriptionGetMetadataCommandCallback"
.end annotation


# instance fields
.field private final blacklist mForceDeactivateSim:Z

.field private final blacklist mPortIndex:I

.field private final blacklist mSwitchAfterDownload:Z

.field private final blacklist mWithUserConsent:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 759
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p8

    .line 760
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 761
    iput-boolean p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    .line 762
    iput-boolean p7, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mForceDeactivateSim:Z

    move/from16 p1, p9

    .line 763
    iput-boolean p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mWithUserConsent:Z

    move/from16 p1, p10

    .line 764
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mPortIndex:I

    return-void
.end method


# virtual methods
.method public blacklist onGetMetadataComplete(ILandroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    .locals 13

    .line 770
    invoke-virtual {p2}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getDownloadableSubscription()Landroid/telephony/euicc/DownloadableSubscription;

    move-result-object v5

    .line 771
    iget-boolean v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mWithUserConsent:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "EuiccController"

    if-eqz v0, :cond_2

    .line 773
    invoke-virtual {p2}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getResult()I

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->onGetMetadataComplete(ILandroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V

    return-void

    .line 779
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    invoke-static {p2, v5, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->-$$Nest$mcheckCarrierPrivilegeInMetadata(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mPortIndex:I

    iget-wide v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingToken:J

    iget-boolean v6, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    iget-boolean v7, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mForceDeactivateSim:Z

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    move v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void

    .line 787
    :cond_1
    const-string p1, "Caller does not have carrier privilege in metadata."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v2, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    :cond_2
    move v10, p1

    .line 791
    invoke-virtual {p2}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getResult()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 794
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 795
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    iget-wide p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingToken:J

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    .line 800
    invoke-static {p1, p2, v0, v1, v6}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadNoPrivilegesOrDeactivateSimCheckMetadata(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v9

    iget v11, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mPortIndex:I

    iget-boolean v12, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    .line 795
    const-string v5, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    .line 804
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    .line 808
    :cond_3
    invoke-virtual {p2}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getResult()I

    move-result p1

    if-eqz p1, :cond_4

    .line 810
    invoke-super {p0, v10, p2}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->onGetMetadataComplete(ILandroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V

    return-void

    .line 814
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    invoke-static {p1, v5, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->-$$Nest$mcheckCarrierPrivilegeInMetadata(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mPortIndex:I

    iget-wide v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingToken:J

    iget-boolean v6, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    iget-boolean v7, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mForceDeactivateSim:Z

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x0

    move v1, v10

    iget-object v10, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void

    .line 822
    :cond_5
    const-string p1, "Caller is not permitted to download this profile per metadata"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v2, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
