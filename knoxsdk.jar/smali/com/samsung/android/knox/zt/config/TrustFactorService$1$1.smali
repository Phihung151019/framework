.class Lcom/samsung/android/knox/zt/config/TrustFactorService$1$1;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/zt/config/TrustFactorService$1;->init(Lcom/samsung/android/knox/zt/config/IResultListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic blacklist this$1:Lcom/samsung/android/knox/zt/config/TrustFactorService$1;

.field public final synthetic blacklist val$listener:Lcom/samsung/android/knox/zt/config/IResultListener;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/knox/zt/config/TrustFactorService$1;Lcom/samsung/android/knox/zt/config/IResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$1;->this$1:Lcom/samsung/android/knox/zt/config/TrustFactorService$1;

    iput-object p2, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$1;->val$listener:Lcom/samsung/android/knox/zt/config/IResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$1;->this$1:Lcom/samsung/android/knox/zt/config/TrustFactorService$1;

    iget-object v0, v0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1;->this$0:Lcom/samsung/android/knox/zt/config/TrustFactorService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/zt/config/TrustFactorService;->onFactorInit()V

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$1;->val$listener:Lcom/samsung/android/knox/zt/config/IResultListener;

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/IResultListener;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
