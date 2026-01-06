.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/Set;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda3;->f$1:Ljava/util/Set;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda3;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda3;->f$1:Ljava/util/Set;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda3;->f$2:J

    .line 6
    .line 7
    check-cast p1, Landroid/net/wifi/ScanResult;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$sLFc5v7hBbQhIsDFOlGpFNJGDmc(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/Set;JLandroid/net/wifi/ScanResult;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
