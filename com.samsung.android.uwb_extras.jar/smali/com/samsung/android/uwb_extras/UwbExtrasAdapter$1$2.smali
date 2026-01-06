.class Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$2;
.super Ljava/lang/Object;
.source "UwbExtrasAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;->notifySessionToken(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;

.field final synthetic blacklist val$sessionID:I

.field final synthetic blacklist val$token:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 106
    iput-object p1, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$2;->this$1:Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;

    iput p2, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$2;->val$sessionID:I

    iput p3, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$2;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$2;->this$1:Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;

    iget-object v0, v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;->val$callback:Lcom/samsung/android/uwb_extras/SecUwbCallback;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$2;->this$1:Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;

    iget-object v0, v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;->val$callback:Lcom/samsung/android/uwb_extras/SecUwbCallback;

    iget v1, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$2;->val$sessionID:I

    iget v2, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$2;->val$token:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/uwb_extras/SecUwbCallback;->notifySessionToken(II)V

    .line 111
    :cond_0
    return-void
.end method
