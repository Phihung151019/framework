.class public final synthetic Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/security/securekeyblob/SecureKeyGenerator$checkedRemoteRequest;


# instance fields
.field public final synthetic f$0:Lcom/samsung/security/securekeyblob/SecureKeyGenerator;

.field public final synthetic f$1:Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/security/securekeyblob/SecureKeyGenerator;Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/security/securekeyblob/SecureKeyGenerator;

    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/security/securekeygeneration/ISecureKeyGeneration;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/security/securekeyblob/SecureKeyGenerator;

    iget-object v1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;

    invoke-static {v0, v1, p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->$r8$lambda$TAHDe-k6b5dSzaTBw3vdUTnj81w(Lcom/samsung/security/securekeyblob/SecureKeyGenerator;Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;Landroid/security/securekeygeneration/ISecureKeyGeneration;)Landroid/security/securekeygeneration/SecureKeyInfo;

    move-result-object p1

    return-object p1
.end method
