.class public Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    }
.end annotation


# instance fields
.field public final greylist mAlgorithm:Ljava/lang/String;

.field public final greylist mBlockModes:[Ljava/lang/String;

.field public final greylist mDigests:[Ljava/lang/String;

.field public final greylist mEcCurveName:Ljava/lang/String;

.field public final greylist mIsManaged:Z

.field public final greylist mIsRandomizedEncryptionRequired:Z

.field public final greylist mKeySize:I

.field public final greylist mKeystoreAlias:Ljava/lang/String;

.field public final greylist mOptions:Landroid/os/Bundle;

.field public final greylist mOwnerUid:I

.field public final greylist mPurposes:I

.field public final greylist mResourceId:I

.field public final greylist mSignaturePaddings:[Ljava/lang/String;

.field public final greylist mSourceUid:I


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;IIZIILjava/lang/String;IZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeySize:I

    iput p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSourceUid:I

    iput-boolean p4, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsManaged:Z

    iput p5, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mResourceId:I

    iput p6, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOwnerUid:I

    iput-object p7, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    iput p8, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mPurposes:I

    iput-boolean p9, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsRandomizedEncryptionRequired:Z

    iput-object p10, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mEcCurveName:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    iput-object p12, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    iput-object p13, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    iput-object p14, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOptions:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public greylist getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getBlockModes()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    return-object p0
.end method

.method public greylist getDigests()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    return-object p0
.end method

.method public greylist getEcCurveName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mEcCurveName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getKeySize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeySize:I

    return p0
.end method

.method public greylist getKeystoreAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getOptions()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public greylist getOwnerUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOwnerUid:I

    return p0
.end method

.method public greylist getPurposes()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mPurposes:I

    return p0
.end method

.method public greylist getResourceId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mResourceId:I

    return p0
.end method

.method public greylist getSignaturePaddings()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public greylist getSourceUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSourceUid:I

    return p0
.end method

.method public greylist isManaged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsManaged:Z

    return p0
.end method

.method public greylist isRandomizedEncryptionRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsRandomizedEncryptionRequired:Z

    return p0
.end method
