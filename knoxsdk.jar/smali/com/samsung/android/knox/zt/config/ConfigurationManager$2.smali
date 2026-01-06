.class Lcom/samsung/android/knox/zt/config/ConfigurationManager$2;
.super Lcom/samsung/android/knox/zt/config/IResultListener$Stub;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/zt/config/ConfigurationManager;->start(Lcom/samsung/android/knox/zt/config/ITrustResultListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic blacklist this$0:Lcom/samsung/android/knox/zt/config/ConfigurationManager;

.field public final synthetic blacklist val$listener:Lcom/samsung/android/knox/zt/config/ITrustResultListener;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/knox/zt/config/ConfigurationManager;Lcom/samsung/android/knox/zt/config/ITrustResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$2;->this$0:Lcom/samsung/android/knox/zt/config/ConfigurationManager;

    iput-object p2, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$2;->val$listener:Lcom/samsung/android/knox/zt/config/ITrustResultListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/config/IResultListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFail(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$2;->val$listener:Lcom/samsung/android/knox/zt/config/ITrustResultListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/ITrustResultListener;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$2;->val$listener:Lcom/samsung/android/knox/zt/config/ITrustResultListener;

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/ITrustResultListener;->onSuccess()V

    return-void
.end method
