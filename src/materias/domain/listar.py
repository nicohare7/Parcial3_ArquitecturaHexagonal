class ListarMateria():
    def __init__(self, DB):
        self.DB = DB 
 
    def run(self):
        cursor = self.DB.cursor()
        cursor.execute('select * from materias')
        data = cursor.fetchall()
        cursor.close()
        return data