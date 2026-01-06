.class Lcom/samsung/android/knox/cmfa/CmfaManager$2;
.super Lcom/samsung/android/knox/cmfa/IResultListener$Stub;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/cmfa/CmfaManager;->start(Lcom/samsung/android/knox/cmfa/IAuthResultListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic greylist val$listener:Lcom/samsung/android/knox/cmfa/IAuthResultListener;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthResultListener;)V
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

    iput-object p2, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$2;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthResultListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/cmfa/IResultListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist onFail(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$2;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthResultListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/IAuthResultListener;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public greylist onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$2;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthResultListener;

    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/IAuthResultListener;->onSuccess()V

    return-void
.end method
