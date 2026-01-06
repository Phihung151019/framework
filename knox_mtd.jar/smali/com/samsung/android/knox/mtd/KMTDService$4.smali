.class Lcom/samsung/android/knox/mtd/KMTDService$4;
.super Lcom/samsung/android/knox/mtd/IMtdCallback$Stub;
.source "KMTDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/mtd/KMTDService;->analyzeContents(Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/samsung/android/knox/mtd/IMtdCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/mtd/KMTDService;Lcom/samsung/android/knox/mtd/IMtdCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/knox/mtd/KMTDService;
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

    .line 602
    iput-object p2, p0, Lcom/samsung/android/knox/mtd/KMTDService$4;->val$cb:Lcom/samsung/android/knox/mtd/IMtdCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/mtd/IMtdCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/mtd/AnalysisResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/mtd/AnalysisResult;>;"
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$4;->val$cb:Lcom/samsung/android/knox/mtd/IMtdCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/mtd/IMtdCallback;->onFinished(Ljava/util/List;)V

    .line 606
    return-void
.end method
