.class Lcom/android/internal/telephony/cat/CatBIPManager$3$1;
.super Ljava/lang/Object;
.source "CatBIPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/CatBIPManager$3;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/cat/CatBIPManager$3;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatBIPManager$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 932
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3$1;->this$1:Lcom/android/internal/telephony/cat/CatBIPManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 0

    .line 934
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3$1;->this$1:Lcom/android/internal/telephony/cat/CatBIPManager$3;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$mcontinueProcessingOpenChannel(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    return-void
.end method
