.class public final Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "FabricKeyGenParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec$Builder;
    }
.end annotation


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mEcCurveName:Ljava/lang/String;

.field private final mKemAlgoName:Ljava/lang/String;

.field private final mKeySize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "ecCurveName"    # Ljava/lang/String;
    .param p3, "kemAlgoName"    # Ljava/lang/String;
    .param p4, "keySize"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->mAlias:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->mEcCurveName:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->mKemAlgoName:Ljava/lang/String;

    .line 21
    iput p4, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->mKeySize:I

    .line 22
    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getEcCurveName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->mEcCurveName:Ljava/lang/String;

    return-object v0
.end method

.method public getKemAlgoName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->mKemAlgoName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/samsung/security/fabric/crypto/FabricKeyGenParameterSpec;->mKeySize:I

    return v0
.end method
