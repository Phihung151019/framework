.class public Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;
.super Ljava/lang/Object;
.source "SemMmTelRegistrationUpdate.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;


# instance fields
.field private blacklist mListener:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

.field private blacklist mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mListener:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    .line 43
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-void
.end method

.method private varargs blacklist iLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->iLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist handleImsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registrationTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyLogUtils;->imsRegistrationTechToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 53
    const-string v2, "ImsRegistrationUpdate.handleImsRegistered"

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVendorTestEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->isSimulateVowifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 59
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    .line 60
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->setFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getSipDetails()Landroid/telephony/ims/SipDetails;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->setSipDetails(Landroid/telephony/ims/SipDetails;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object p1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyLogUtils;->imsRegistrationTechToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 61
    const-string v1, "ImsRegistrationUpdate.handleImsRegistered (Overridden)"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mListener:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;->handleImsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method public blacklist handleImsRegistering(I)V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transport type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ImsRegistrationUpdate.handleImsRegistering"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mListener:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;->handleImsRegistering(I)V

    return-void
.end method

.method public blacklist handleImsSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uris: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "<MASKED>"

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ImsRegistrationUpdate.handleImsSubscriberAssociatedUriChanged"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mListener:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;->handleImsSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method public blacklist handleImsUnregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVendorTestEnabled()Z

    move-result v0

    const-string v1, "registrationTech: "

    const-string v2, "suggestedAction: "

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->isSimulateVowifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyLogUtils;->suggestedActionToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {p3}, Lcom/android/internal/telephony/TelephonyLogUtils;->imsRegistrationTechToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 87
    const-string p2, "ImsRegistrationUpdate.handleImsUnregistered (Ignored for TEST)"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyLogUtils;->suggestedActionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {p3}, Lcom/android/internal/telephony/TelephonyLogUtils;->imsRegistrationTechToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 93
    const-string v1, "ImsRegistrationUpdate.handleImsUnregistered"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mListener:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;->handleImsUnregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method
