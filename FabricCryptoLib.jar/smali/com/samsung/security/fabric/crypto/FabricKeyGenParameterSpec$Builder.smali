.class public final Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "FabricKeyGenParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mEcCurveName:Ljava/lang/String;

.field private mKemAlgoName:Ljava/lang/String;

.field private mKeySize:I


# direct methods
.method public constructor <init>(Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;)V
    .locals 1
    .param p1, "sourceSpec"    # Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;

    .line 55
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getEcCurveName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mEcCurveName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getKemAlgoName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mKemAlgoName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->getKeySize()I

    move-result v0

    iput v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mKeySize:I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mAlias:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mEcCurveName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mKemAlgoName:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mKeySize:I

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iput-object p1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mAlias:Ljava/lang/String;

    .line 52
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The alias cannot be an empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;
    .locals 5

    .line 81
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mAlias:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mEcCurveName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mKemAlgoName:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mKeySize:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public setEcCurve(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "ecCurve"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mEcCurveName:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public setKemAlgo(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "kemAlgo"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mKemAlgoName:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public setKeySize(I)Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "keySize"    # I

    .line 72
    if-ltz p1, :cond_0

    .line 75
    iput p1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;->mKeySize:I

    .line 76
    return-object p0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keySize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
