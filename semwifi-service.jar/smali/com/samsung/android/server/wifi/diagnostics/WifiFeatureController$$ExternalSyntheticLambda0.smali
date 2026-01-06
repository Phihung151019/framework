.class public final synthetic Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;->onScpmPolicyUpdated()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
