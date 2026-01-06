.class public final synthetic Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;->f$2:Z

    .line 6
    .line 7
    check-cast p1, Lcom/samsung/android/server/wifi/db/WifiControlListener;

    .line 8
    .line 9
    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->$r8$lambda$pOYOq9_7JvlI2zBUzUXqc1zNC68(Ljava/lang/String;ZZLcom/samsung/android/server/wifi/db/WifiControlListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
