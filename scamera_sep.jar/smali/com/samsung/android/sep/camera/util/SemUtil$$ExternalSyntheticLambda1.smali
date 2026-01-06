.class public final synthetic Lcom/samsung/android/sep/camera/util/SemUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sep/camera/util/RawStreamConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sep/camera/util/RawStreamConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sep/camera/util/SemUtil$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SemUtil$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    check-cast p1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    invoke-static {v0, p1}, Lcom/samsung/android/sep/camera/util/SemUtil;->lambda$getDistinctRawStreamConfigs$2(Lcom/samsung/android/sep/camera/util/RawStreamConfig;Lcom/samsung/android/sep/camera/util/RawStreamConfig;)Z

    move-result p1

    return p1
.end method
