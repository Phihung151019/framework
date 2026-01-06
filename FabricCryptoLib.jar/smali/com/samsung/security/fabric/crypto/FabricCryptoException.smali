.class public Lcom/samsung/security/fabric/crypto/FabricCryptoException;
.super Ljava/lang/Exception;
.source "FabricCryptoException.java"


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 8
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    iput p1, p0, Lcom/samsung/security/fabric/crypto/FabricCryptoException;->mErrorCode:I

    .line 10
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/samsung/security/fabric/crypto/FabricCryptoException;->mErrorCode:I

    return v0
.end method
