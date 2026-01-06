.class public final Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
.super Ljava/lang/Object;
.source "AttestParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/security/keystore/AttestParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final mChallenge:[B

.field private mDeviceAttestation:Z

.field private mDevicePropertiesAttestationIncluded:Z

.field private mExtendedKeyUsage:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mSAKUidRequired:Z

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field private mVerifiableIntegrity:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/security/keystore/AttestParameterSpec;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getChallenge()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDeviceAttestation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isVerifiableIntegrity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isSAKUidRequired()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSAKUidRequired:Z

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSAKUidRequired:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mExtendedKeyUsage:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v6, "SHA-384"

    const-string v7, "SHA-512"

    const-string v2, "NONE"

    const-string v3, "SHA-1"

    const-string v4, "SHA-224"

    const-string v5, "SHA-256"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput-object p2, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mChallenge:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "challenge == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/security/keystore/AttestParameterSpec;
    .locals 11

    new-instance v0, Lcom/samsung/android/security/keystore/AttestParameterSpec;

    iget-object v1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mChallenge:[B

    iget-boolean v3, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    iget-boolean v4, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    iget-boolean v5, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    iget-boolean v6, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSAKUidRequired:Z

    iget-object v7, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mExtendedKeyUsage:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mPackageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iget-object v10, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>(Ljava/lang/String;[BZZZZLjava/lang/String;Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;Ljavax/security/auth/x500/X500Principal;)V

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object p0
.end method

.method public setDeviceAttestation(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    return-object p0
.end method

.method public setDevicePropertiesAttestationIncluded(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    return-object p0
.end method

.method public setExtendedKeyUsage(Ljava/lang/String;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/security/keystore/SAKAttestProperties;->convertEKUStringToOID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mExtendedKeyUsage:Ljava/lang/String;

    return-object p0
.end method

.method public setKeyGenParameterSpec(Landroid/security/keystore/KeyGenParameterSpec;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setSAKUidRequired(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSAKUidRequired:Z

    return-object p0
.end method

.method public setVerifiableIntegrity(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    return-object p0
.end method
