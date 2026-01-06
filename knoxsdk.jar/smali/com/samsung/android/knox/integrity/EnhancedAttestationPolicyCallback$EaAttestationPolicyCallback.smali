.class Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;
.super Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback$Stub;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EaAttestationPolicyCallback"
.end annotation


# instance fields
.field public greylist mNonce:Ljava/lang/String;

.field public final synthetic greylist this$0:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->this$0:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback$Stub;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttestationFinished: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EAPolicyCb"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getInstance()Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->removeFromTrackMap(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->this$0:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->acb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void
.end method
