.class public Lcom/android/server/display/topology/Display;
.super Ljava/lang/Object;
.source "Display.java"


# instance fields
.field private children:Lcom/android/server/display/topology/Children;

.field private id:Ljava/lang/String;

.field private offset:Ljava/lang/Float;

.field private position:Lcom/android/server/display/topology/Position;

.field private primary:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/Display;
    .locals 7
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/android/server/display/topology/Display;

    invoke-direct {v0}, Lcom/android/server/display/topology/Display;-><init>()V

    .line 93
    .local v0, "_instance":Lcom/android/server/display/topology/Display;
    const/4 v1, 0x0

    .line 94
    .local v1, "_raw":Ljava/lang/String;
    const-string/jumbo v2, "id"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_0

    .line 96
    move-object v2, v1

    .line 97
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/display/topology/Display;->setId(Ljava/lang/String;)V

    .line 99
    .end local v2    # "_value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "primary"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_1

    .line 101
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 102
    .local v2, "_value":Z
    invoke-virtual {v0, v2}, Lcom/android/server/display/topology/Display;->setPrimary(Z)V

    .line 104
    .end local v2    # "_value":Z
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 106
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_6

    if-eq v4, v6, :cond_6

    .line 108
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    goto :goto_0

    .line 109
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "_tagName":Ljava/lang/String;
    const-string/jumbo v5, "position"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/android/server/display/topology/Position;->fromString(Ljava/lang/String;)Lcom/android/server/display/topology/Position;

    move-result-object v5

    .line 113
    .local v5, "_value":Lcom/android/server/display/topology/Position;
    invoke-virtual {v0, v5}, Lcom/android/server/display/topology/Display;->setPosition(Lcom/android/server/display/topology/Position;)V

    .line 114
    .end local v5    # "_value":Lcom/android/server/display/topology/Position;
    goto :goto_1

    :cond_3
    const-string/jumbo v5, "offset"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 115
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 117
    .local v5, "_value":F
    invoke-virtual {v0, v5}, Lcom/android/server/display/topology/Display;->setOffset(F)V

    .line 118
    .end local v5    # "_value":F
    goto :goto_1

    :cond_4
    const-string v5, "children"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 119
    invoke-static {p0}, Lcom/android/server/display/topology/Children;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/Children;

    move-result-object v5

    .line 120
    .local v5, "_value":Lcom/android/server/display/topology/Children;
    invoke-virtual {v0, v5}, Lcom/android/server/display/topology/Display;->setChildren(Lcom/android/server/display/topology/Children;)V

    .line 121
    .end local v5    # "_value":Lcom/android/server/display/topology/Children;
    goto :goto_1

    .line 122
    :cond_5
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 124
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 125
    :cond_6
    if-ne v4, v6, :cond_7

    .line 128
    return-object v0

    .line 126
    :cond_7
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "Display is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getChildren()Lcom/android/server/display/topology/Children;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->children:Lcom/android/server/display/topology/Children;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()F
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->offset:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    return v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->offset:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getPosition()Lcom/android/server/display/topology/Position;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->position:Lcom/android/server/display/topology/Position;

    return-object v0
.end method

.method public getPrimary()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->primary:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->primary:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method hasChildren()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->children:Lcom/android/server/display/topology/Children;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasId()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasOffset()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->offset:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    return v0

    .line 36
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasPosition()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->position:Lcom/android/server/display/topology/Position;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    return v0

    .line 18
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasPrimary()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->primary:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setChildren(Lcom/android/server/display/topology/Children;)V
    .locals 0
    .param p1, "children"    # Lcom/android/server/display/topology/Children;

    .line 55
    iput-object p1, p0, Lcom/android/server/display/topology/Display;->children:Lcom/android/server/display/topology/Children;

    .line 56
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .line 40
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/topology/Display;->offset:Ljava/lang/Float;

    .line 41
    return-void
.end method

.method public setPosition(Lcom/android/server/display/topology/Position;)V
    .locals 0
    .param p1, "position"    # Lcom/android/server/display/topology/Position;

    .line 22
    iput-object p1, p0, Lcom/android/server/display/topology/Display;->position:Lcom/android/server/display/topology/Position;

    .line 23
    return-void
.end method

.method public setPrimary(Z)V
    .locals 1
    .param p1, "primary"    # Z

    .line 88
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/topology/Display;->primary:Ljava/lang/Boolean;

    .line 89
    return-void
.end method

.method write(Lcom/android/server/display/topology/XmlWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "_out"    # Lcom/android/server/display/topology/XmlWriter;
    .param p2, "_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->hasId()Z

    move-result v0

    const-string v1, "\""

    if-eqz v0, :cond_0

    .line 134
    const-string v0, " id=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->hasPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const-string v0, " primary=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->getPrimary()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 143
    :cond_1
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/android/server/display/topology/XmlWriter;->increaseIndent()V

    .line 145
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->hasPosition()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    const-string v1, "<position>"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->getPosition()Lcom/android/server/display/topology/Position;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/topology/Position;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 148
    const-string v1, "</position>\n"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->hasOffset()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    const-string v1, "<offset>"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->getOffset()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 153
    const-string v1, "</offset>\n"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->getChildren()Lcom/android/server/display/topology/Children;

    move-result-object v1

    const-string v2, "children"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/topology/Children;->write(Lcom/android/server/display/topology/XmlWriter;Ljava/lang/String;)V

    .line 158
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/display/topology/XmlWriter;->decreaseIndent()V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 160
    return-void
.end method
