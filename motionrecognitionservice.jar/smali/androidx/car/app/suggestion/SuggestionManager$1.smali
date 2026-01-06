.class Landroidx/car/app/suggestion/SuggestionManager$1;
.super Ljava/lang/Object;
.source "SuggestionManager.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/app/suggestion/SuggestionManager;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/app/suggestion/SuggestionManager;

.field final synthetic val$lifecycle:Landroidx/lifecycle/Lifecycle;


# direct methods
.method constructor <init>(Landroidx/car/app/suggestion/SuggestionManager;Landroidx/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/car/app/suggestion/SuggestionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Landroidx/car/app/suggestion/SuggestionManager$1;->this$0:Landroidx/car/app/suggestion/SuggestionManager;

    iput-object p2, p0, Landroidx/car/app/suggestion/SuggestionManager$1;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 107
    iget-object v0, p0, Landroidx/car/app/suggestion/SuggestionManager$1;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 108
    return-void
.end method
