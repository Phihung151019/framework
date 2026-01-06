.class Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$1;
.super Ljava/lang/Object;
.source "UwbExtrasAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;->onNotification(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;

.field final synthetic blacklist val$gid:I

.field final synthetic blacklist val$oid:I

.field final synthetic blacklist val$rawUciNtf:[B


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;II[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$1;->this$1:Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;

    iput p2, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$1;->val$gid:I

    iput p3, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$1;->val$oid:I

    iput-object p4, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$1;->val$rawUciNtf:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$1;->this$1:Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;

    iget-object v0, v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;->val$callback:Lcom/samsung/android/uwb_extras/SecUwbCallback;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$1;->this$1:Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;

    iget-object v0, v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;->val$callback:Lcom/samsung/android/uwb_extras/SecUwbCallback;

    iget v1, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$1;->val$gid:I

    iget v2, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$1;->val$oid:I

    iget-object v3, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$1;->val$rawUciNtf:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/uwb_extras/SecUwbCallback;->onNotification(II[B)V

    .line 102
    :cond_0
    return-void
.end method
