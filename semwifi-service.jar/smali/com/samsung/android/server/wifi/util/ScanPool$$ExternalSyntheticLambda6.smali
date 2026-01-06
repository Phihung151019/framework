.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Lcom/samsung/android/server/wifi/util/LogUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/io/PrintWriter;Ljava/util/Set;Lcom/samsung/android/server/wifi/util/LogUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda6;->f$1:Ljava/io/PrintWriter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda6;->f$2:Ljava/util/Set;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda6;->f$3:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda6;->f$1:Ljava/io/PrintWriter;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda6;->f$2:Ljava/util/Set;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda6;->f$3:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 8
    .line 9
    check-cast p1, Landroid/net/wifi/ScanResult;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$ZAfpzvi2x-bndaxIagFq_lh0wmg(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/io/PrintWriter;Ljava/util/Set;Lcom/samsung/android/server/wifi/util/LogUtils;Landroid/net/wifi/ScanResult;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
