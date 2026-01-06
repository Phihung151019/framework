.class public final synthetic Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1$$ExternalSyntheticLambda0;->f$0:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1$$ExternalSyntheticLambda0;->f$0:Z

    .line 2
    .line 3
    check-cast p1, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;->$r8$lambda$suapDhIg3iPlzqpptDOoim5VQww(ZLcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
