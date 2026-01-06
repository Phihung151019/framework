.class Lcom/android/internal/telephony/SemSatellitePhone$1;
.super Ljava/lang/Object;
.source "SemSatellitePhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SemSatellitePhone;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemSatellitePhone;

.field final synthetic blacklist val$ar:Landroid/os/AsyncResult;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemSatellitePhone;Landroid/os/AsyncResult;)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 780
    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$1;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    iput-object p2, p0, Lcom/android/internal/telephony/SemSatellitePhone$1;->val$ar:Landroid/os/AsyncResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone$1;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone$1;->val$ar:Landroid/os/AsyncResult;

    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/telephony/satellite/SemSatSimAuthReqData;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$mhandleOnSimAuthDataRequested(Lcom/android/internal/telephony/SemSatellitePhone;Landroid/telephony/satellite/SemSatSimAuthReqData;)V

    return-void
.end method
