.class Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$1;
.super Ljava/util/ArrayList;
.source "UwbFactoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->initTestModeSession()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/uwb/UwbAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

.field final synthetic val$dstMacAddress:[B


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;
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

    .line 1110
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$1;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    iput-object p2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$1;->val$dstMacAddress:[B

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    iget-object p2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$1;->val$dstMacAddress:[B

    invoke-static {p2}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$1;->add(Ljava/lang/Object;)Z

    .line 1112
    return-void
.end method
