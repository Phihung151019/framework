.class public final synthetic Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

.field public final synthetic f$1:[Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;[Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda2;->f$1:[Ljava/io/File;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda2;->f$1:[Ljava/io/File;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->trainHelper([Ljava/io/File;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
