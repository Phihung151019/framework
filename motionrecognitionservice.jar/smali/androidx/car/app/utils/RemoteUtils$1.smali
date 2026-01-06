.class Landroidx/car/app/utils/RemoteUtils$1;
.super Landroidx/car/app/IOnDoneCallback$Stub;
.source "RemoteUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/car/app/OnDoneCallback;


# direct methods
.method constructor <init>(Landroidx/car/app/OnDoneCallback;)V
    .locals 0

    .line 254
    iput-object p1, p0, Landroidx/car/app/utils/RemoteUtils$1;->val$callback:Landroidx/car/app/OnDoneCallback;

    invoke-direct {p0}, Landroidx/car/app/IOnDoneCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Landroidx/car/app/serialization/Bundleable;)V
    .locals 1
    .param p1, "failureResponse"    # Landroidx/car/app/serialization/Bundleable;

    .line 262
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$1;->val$callback:Landroidx/car/app/OnDoneCallback;

    invoke-interface {v0, p1}, Landroidx/car/app/OnDoneCallback;->onFailure(Landroidx/car/app/serialization/Bundleable;)V

    .line 263
    return-void
.end method

.method public onSuccess(Landroidx/car/app/serialization/Bundleable;)V
    .locals 1
    .param p1, "response"    # Landroidx/car/app/serialization/Bundleable;

    .line 257
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$1;->val$callback:Landroidx/car/app/OnDoneCallback;

    invoke-interface {v0, p1}, Landroidx/car/app/OnDoneCallback;->onSuccess(Landroidx/car/app/serialization/Bundleable;)V

    .line 258
    return-void
.end method
