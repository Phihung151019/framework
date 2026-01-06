.class Lcom/android/server/ssrm/SortingMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "SortingMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/SortingMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/SortingMachine;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/SortingMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/SortingMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/android/server/ssrm/SortingMachine$1;->this$0:Lcom/android/server/ssrm/SortingMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {}, Lcom/android/server/ssrm/SortingMachine;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceiveImpl:: ACTION_PACKAGE_ADDED"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "newPackageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ssrm/SortingMachine$1;->this$0:Lcom/android/server/ssrm/SortingMachine;

    invoke-static {v2, v1}, Lcom/android/server/ssrm/SortingMachine;->-$$Nest$mregisterTorrentPackages(Lcom/android/server/ssrm/SortingMachine;Ljava/lang/String;)V

    .line 92
    .end local v1    # "newPackageName":Ljava/lang/String;
    goto :goto_2

    .line 93
    :cond_0
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-static {}, Lcom/android/server/ssrm/SortingMachine;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceiveImpl:: ACTION_PACKAGE_REMOVED"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 97
    if-nez v2, :cond_1

    .line 98
    goto :goto_1

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/android/server/ssrm/SortingMachine$1;->this$0:Lcom/android/server/ssrm/SortingMachine;

    invoke-static {v3}, Lcom/android/server/ssrm/SortingMachine;->-$$Nest$fgetmTables(Lcom/android/server/ssrm/SortingMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    .line 101
    .local v3, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v3    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return-void
.end method
