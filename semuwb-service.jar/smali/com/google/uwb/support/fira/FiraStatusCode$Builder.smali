.class public Lcom/google/uwb/support/fira/FiraStatusCode$Builder;
.super Ljava/lang/Object;
.source "FiraStatusCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraStatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mStatusCode:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraStatusCode$Builder;->mStatusCode:Lcom/google/uwb/support/base/RequiredParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/fira/FiraStatusCode;
    .locals 3

    .line 85
    new-instance v0, Lcom/google/uwb/support/fira/FiraStatusCode;

    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraStatusCode$Builder;->mStatusCode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/uwb/support/fira/FiraStatusCode;-><init>(ILcom/google/uwb/support/fira/FiraStatusCode$1;)V

    return-object v0
.end method

.method public setStatusCode(I)Lcom/google/uwb/support/fira/FiraStatusCode$Builder;
    .locals 2
    .param p1, "statusCode"    # I

    .line 80
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraStatusCode$Builder;->mStatusCode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 81
    return-object p0
.end method
