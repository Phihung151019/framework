.class Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;
.super Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback$Stub;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic greylist val$cb:Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;->val$cb:Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist onFinished(I)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;->val$cb:Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;->onFinished(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;)V

    return-void
.end method
