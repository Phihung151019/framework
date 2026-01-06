.class Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;
.super Landroid/database/ContentObserver;
.source "SemInputSettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field private defaultValueInt:I

.field private final handler:Landroid/os/Handler;

.field private final key:Ljava/lang/String;

.field private final messageWhat:I

.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

.field private final valueType:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;Landroid/os/Handler;ILjava/lang/String;I)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    .line 156
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 153
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->defaultValueInt:I

    .line 157
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->handler:Landroid/os/Handler;

    .line 158
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->messageWhat:I

    .line 159
    iput-object p4, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->key:Ljava/lang/String;

    .line 160
    iput p5, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->defaultValueInt:I

    .line 161
    sget-object p1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->INTEGER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->valueType:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    .line 165
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 153
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->defaultValueInt:I

    .line 166
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->handler:Landroid/os/Handler;

    .line 167
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->messageWhat:I

    .line 168
    iput-object p4, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->key:Ljava/lang/String;

    .line 169
    sget-object p1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->STRING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->valueType:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    .line 170
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 174
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->valueType:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "valueType is not defined: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->valueType:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputSettingObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->updateString()V

    .line 180
    goto :goto_0

    .line 176
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->updateInt()V

    .line 177
    nop

    .line 185
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateInt()V
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->messageWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 189
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->messageWhat:I

    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    .line 190
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->-$$Nest$fgetcontext(Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;)Landroid/content/Context;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->key:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->defaultValueInt:I

    .line 190
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 192
    :cond_0
    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->messageWhat:I

    const/16 v2, 0x64

    const/4 v3, -0x2

    if-le v1, v2, :cond_1

    .line 193
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->-$$Nest$fgetcontext(Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;)Landroid/content/Context;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->key:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->defaultValueInt:I

    .line 193
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->-$$Nest$fgetcontext(Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;)Landroid/content/Context;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->key:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->defaultValueInt:I

    .line 196
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method

.method public updateString()V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->messageWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v1, "data":Landroid/os/Bundle;
    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->messageWhat:I

    const/16 v3, 0xc8

    const-string v4, "data"

    if-le v2, v3, :cond_0

    .line 206
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->-$$Nest$fgetcontext(Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_0
    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->messageWhat:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    .line 208
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->-$$Nest$fgetcontext(Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->-$$Nest$fgetcontext(Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 213
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method
