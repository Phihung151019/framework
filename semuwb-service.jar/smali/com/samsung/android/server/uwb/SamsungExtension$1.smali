.class Lcom/samsung/android/server/uwb/SamsungExtension$1;
.super Ljava/lang/Object;
.source "SamsungExtension.java"

# interfaces
.implements Lcom/samsung/android/server/uwb/IVendorExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/SamsungExtension;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/uwb/SamsungExtension;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/SamsungExtension;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/SamsungExtension;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/samsung/android/server/uwb/SamsungExtension$1;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionToken(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$1;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmSessionManager(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->findUwbSession(I)Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    move-result-object v0

    .line 125
    .local v0, "uwbSession":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionToken()I

    move-result v1

    return v1

    .line 127
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSpecificationInfo()Lcom/google/uwb/support/generic/GenericSpecificationParams;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$1;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmVendorExtensionWrapper(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->getSpecificationInfo()Lcom/google/uwb/support/generic/GenericSpecificationParams;

    move-result-object v0

    return-object v0
.end method

.method public sendVendorUciMessage(II[B)[B
    .locals 1
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "data"    # [B

    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$1;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmVendorExtensionWrapper(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->sendVendorUciMessage(II[B)[B

    move-result-object v0

    return-object v0
.end method
