.class public Lcom/android/internal/telephony/SemVendorConfiguration;
.super Ljava/lang/Object;
.source "SemVendorConfiguration.java"


# instance fields
.field greylist mConfigurationName:Ljava/lang/String;

.field greylist mConfigurationValue:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/SemVendorConfiguration;->mConfigurationName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/SemVendorConfiguration;->mConfigurationValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getConfigurationName()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/internal/telephony/SemVendorConfiguration;->mConfigurationName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getConfigurationValue()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/internal/telephony/SemVendorConfiguration;->mConfigurationValue:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mConfigurationName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemVendorConfiguration;->mConfigurationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigurationValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemVendorConfiguration;->mConfigurationValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
