.class public final synthetic Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

.field public final synthetic f$1:B


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    iput-byte p2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda4;->f$1:B

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    iget-byte v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda4;->f$1:B

    invoke-static {v0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->$r8$lambda$oqyPEUa7d4hboDYW7Y3ytht2fjs(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;B)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
