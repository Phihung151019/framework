.class public final Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UcsKeyPairGeneratorSpec"
.end annotation


# instance fields
.field private final greylist mKeySize:I

.field private final greylist mKeystoreAlias:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;->mKeySize:I

    return-void
.end method


# virtual methods
.method public greylist getKeySize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;->mKeySize:I

    return p0
.end method

.method public greylist getKeystoreAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object p0
.end method
