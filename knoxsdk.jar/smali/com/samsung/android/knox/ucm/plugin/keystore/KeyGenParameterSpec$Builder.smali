.class public final Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public greylist mAlgorithm:Ljava/lang/String;

.field public greylist mBlockModes:[Ljava/lang/String;

.field public greylist mDigests:[Ljava/lang/String;

.field public greylist mEcCurveName:Ljava/lang/String;

.field public greylist mIsManaged:Z

.field public greylist mIsRandomizedEncryptionRequired:Z

.field public greylist mKeySize:I

.field public greylist mKeystoreAlias:Ljava/lang/String;

.field public greylist mOptions:Landroid/os/Bundle;

.field public greylist mOwnerUid:I

.field public greylist mPurposes:I

.field public greylist mResourceId:I

.field public greylist mSignaturePaddings:[Ljava/lang/String;

.field public greylist mSourceUid:I


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;IIZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    iput p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSourceUid:I

    iput-boolean p4, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsManaged:Z

    iput p5, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mResourceId:I

    iput p6, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOwnerUid:I

    return-void
.end method


# virtual methods
.method public greylist build()Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;
    .locals 15

    new-instance v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;

    iget-object v1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    iget v3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSourceUid:I

    iget-boolean v4, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsManaged:Z

    iget v5, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mResourceId:I

    iget v6, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOwnerUid:I

    iget-object v7, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    iget v8, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    iget-boolean v9, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsRandomizedEncryptionRequired:Z

    iget-object v10, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mEcCurveName:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    iget-object v12, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    iget-object v13, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    iget-object v14, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOptions:Landroid/os/Bundle;

    invoke-direct/range {v0 .. v14}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;IIZIILjava/lang/String;IZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public greylist setAlgorithm(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setBlockModes([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    return-object p0
.end method

.method public greylist setDigests([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    return-object p0
.end method

.method public greylist setEcCurveName(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mEcCurveName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setOptions(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public greylist setPurpose(I)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    return-object p0
.end method

.method public greylist setRandomizedEncryptionRequired(Z)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsRandomizedEncryptionRequired:Z

    return-object p0
.end method

.method public greylist setSignaturePaddings([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    return-object p0
.end method
