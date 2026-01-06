.class Lcom/android/internal/telephony/imsphone/ImsPhone$4;
.super Ljava/lang/Object;
.source "ImsPhone.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2975
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist handleImsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 6

    .line 2978
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v0

    .line 2980
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleImsRegistered: onImsMmTelConnected imsTransportType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2980
    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V

    .line 2983
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmRegLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2983
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2985
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 2986
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/Phone;->setImsRegistrationState(Z)V

    .line 2987
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$300(Lcom/android/internal/telephony/imsphone/ImsPhone;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 2988
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmImsStats(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->onImsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 2989
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsNrSaModeHandler:Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;

    .line 2990
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getFeatureTags()Ljava/util/Set;

    move-result-object v4

    .line 2989
    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->onImsRegistered(ILjava/util/Set;)V

    .line 2991
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2992
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v3

    const/4 v4, 0x2

    .line 2991
    invoke-static {v1, v4, v3, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mupdateImsRegistrationInfo(Lcom/android/internal/telephony/imsphone/ImsPhone;IIII)V

    .line 2996
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$400(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 2997
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$500(Lcom/android/internal/telephony/imsphone/ImsPhone;)I

    move-result v2

    .line 2998
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result p1

    invoke-direct {v1, v2, p1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;-><init>(III)V

    invoke-direct {v0, v5, v1, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3003
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmImsRegistrationUpdateRegistrants(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist handleImsRegistering(I)V
    .locals 5

    .line 3009
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsRegistering: onImsMmTelProgressing imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3010
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3009
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V

    .line 3012
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmRegLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3013
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3012
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3014
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 3015
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->setImsRegistrationState(Z)V

    .line 3016
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$600(Lcom/android/internal/telephony/imsphone/ImsPhone;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3018
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmImsStats(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->onImsRegistering(I)V

    .line 3021
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$700(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 3022
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$800(Lcom/android/internal/telephony/imsphone/ImsPhone;)I

    move-result v3

    invoke-direct {v2, v3, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;-><init>(III)V

    invoke-direct {v0, v4, v2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3028
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmImsRegistrationUpdateRegistrants(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist handleImsSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 2

    .line 3084
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const-string v1, "handleImsSubscriberAssociatedUriChanged"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V

    .line 3085
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCurrentSubscriberUris([Landroid/net/Uri;)V

    .line 3086
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setPhoneNumberForSourceIms([Landroid/net/Uri;)V

    return-void
.end method

.method public blacklist handleImsUnregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    .locals 5

    .line 3036
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsUnregistered: onImsMmTelDisconnected imsReasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", suggestedAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", disconnectedRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V

    .line 3040
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmRegLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsUnregistered: onImsMmTelDisconnected imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3042
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 3043
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->processDisconnectReason(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3044
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->setImsRegistrationState(Z)V

    .line 3045
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$900(Lcom/android/internal/telephony/imsphone/ImsPhone;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3047
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmImsStats(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->onImsUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3048
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsNrSaModeHandler:Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->onImsUnregistered(I)V

    .line 3049
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fputmImsRegistrationTech(Lcom/android/internal/telephony/imsphone/ImsPhone;I)V

    .line 3051
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result p1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    if-eq p2, v1, :cond_2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 3055
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$1000(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    if-eq p2, v4, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v2

    .line 3062
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p1, v2, p3, p2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$mupdateImsRegistrationInfo(Lcom/android/internal/telephony/imsphone/ImsPhone;IIII)V

    .line 3065
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$1100(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 3067
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCurrentSubscriberUris([Landroid/net/Uri;)V

    .line 3068
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->clearPhoneNumberForSourceIms()V

    .line 3072
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$1200(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 3073
    new-instance p1, Landroid/os/AsyncResult;

    new-instance p3, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$1300(Lcom/android/internal/telephony/imsphone/ImsPhone;)I

    move-result v0

    invoke-direct {p3, v0, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;-><init>(III)V

    invoke-direct {p1, p2, p3, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3079
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$fgetmImsRegistrationUpdateRegistrants(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
