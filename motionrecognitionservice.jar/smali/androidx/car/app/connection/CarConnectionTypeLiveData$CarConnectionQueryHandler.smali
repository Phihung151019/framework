.class Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CarConnectionTypeLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/connection/CarConnectionTypeLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarConnectionQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/app/connection/CarConnectionTypeLiveData;


# direct methods
.method constructor <init>(Landroidx/car/app/connection/CarConnectionTypeLiveData;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/car/app/connection/CarConnectionTypeLiveData;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 92
    iput-object p1, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionQueryHandler;->this$0:Landroidx/car/app/connection/CarConnectionTypeLiveData;

    .line 93
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "response"    # Landroid/database/Cursor;

    .line 98
    const/4 v0, 0x0

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 98
    const-string v1, "CarApp.Conn"

    if-nez p3, :cond_0

    .line 99
    const-string v2, "Null response from content provider when checking connection to the car, treating as disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionQueryHandler;->this$0:Landroidx/car/app/connection/CarConnectionTypeLiveData;

    invoke-static {v1, v0}, Landroidx/car/app/connection/CarConnectionTypeLiveData;->access$000(Landroidx/car/app/connection/CarConnectionTypeLiveData;Ljava/lang/Object;)V

    .line 102
    return-void

    .line 105
    :cond_0
    const-string v2, "CarConnectionState"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 106
    .local v2, "carConnectionTypeColumn":I
    if-gez v2, :cond_1

    .line 107
    const-string v3, "Connection to car response is missing the connection type, treating as disconnected"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionQueryHandler;->this$0:Landroidx/car/app/connection/CarConnectionTypeLiveData;

    invoke-static {v1, v0}, Landroidx/car/app/connection/CarConnectionTypeLiveData;->access$100(Landroidx/car/app/connection/CarConnectionTypeLiveData;Ljava/lang/Object;)V

    .line 110
    return-void

    .line 113
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    const-string v3, "Connection to car response is empty, treating as disconnected"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionQueryHandler;->this$0:Landroidx/car/app/connection/CarConnectionTypeLiveData;

    invoke-static {v1, v0}, Landroidx/car/app/connection/CarConnectionTypeLiveData;->access$200(Landroidx/car/app/connection/CarConnectionTypeLiveData;Ljava/lang/Object;)V

    .line 117
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionQueryHandler;->this$0:Landroidx/car/app/connection/CarConnectionTypeLiveData;

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/car/app/connection/CarConnectionTypeLiveData;->access$300(Landroidx/car/app/connection/CarConnectionTypeLiveData;Ljava/lang/Object;)V

    .line 121
    return-void
.end method
